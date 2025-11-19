@interface RamrodMDNSEncoder
- (BOOL)encodeAnyFamily:(id)a3 address:(const sockaddr *)a4;
- (RamrodMDNSEncoder)initWithTTL:(unsigned int)a3;
- (void)_updateHeader;
- (void)encodeA:(id)a3 address:(const in_addr *)a4;
- (void)encodeAAAA:(id)a3 address:(const in6_addr *)a4;
- (void)encodeBytes:(const void *)a3 length:(unsigned __int8)a4;
- (void)encodeCNAME:(id)a3 target:(id)a4;
- (void)encodeLabel:(id)a3;
- (void)encodeName:(id)a3 compression:(BOOL)a4;
- (void)encodePTR:(id)a3 target:(id)a4;
- (void)encodeRR:(id)a3 type:(unsigned __int16)a4 class:(unsigned __int16)a5 unique:(BOOL)a6;
- (void)encodeSRV:(id)a3 priority:(unsigned __int16)a4 weight:(unsigned __int16)a5 port:(unsigned __int16)a6 target:(id)a7;
- (void)encodeTXT:(id)a3 strings:(id)a4;
- (void)updateRRDataLength;
@end

@implementation RamrodMDNSEncoder

- (RamrodMDNSEncoder)initWithTTL:(unsigned int)a3
{
  v13.receiver = self;
  v13.super_class = RamrodMDNSEncoder;
  v4 = [(RamrodMDNSEncoder *)&v13 init];
  if (v4)
  {
    v12 = 0;
    v11 = 8650752;
    v5 = [[NSMutableData alloc] initWithBytes:&v11 length:12];
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = *(v4 + 2);
    *(v4 + 2) = v7;

    *(v4 + 10) = a3;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    *(v4 + 24) = vnegq_f64(v9);
  }

  return v4;
}

- (void)_updateHeader
{
  v4 = 0;
  v3 = 0;
  [(NSMutableData *)self->_packet getBytes:&v3 range:0, 12];
  HIWORD(v3) = bswap32(LOWORD(self->_recordCount)) >> 16;
  [(NSMutableData *)self->_packet replaceBytesInRange:0 withBytes:12, &v3];
}

- (void)encodeBytes:(const void *)a3 length:(unsigned __int8)a4
{
  v6 = a4;
  [(RamrodMDNSEncoder *)self appendBytes:&v6 length:1];
  [(RamrodMDNSEncoder *)self appendBytes:a3 length:v6];
}

- (void)encodeLabel:(id)a3
{
  memset(v5, 0, sizeof(v5));
  if ([a3 getCString:v5 maxLength:64 encoding:4])
  {
    v4 = strlen(v5);
  }

  else
  {
    LOBYTE(v5[0]) = 0;
    v4 = 1;
  }

  [(RamrodMDNSEncoder *)self encodeBytes:v5 length:v4];
}

- (void)encodeName:(id)a3 compression:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([v6 hasSuffix:@"."] & 1) == 0)
  {
    v7 = [v6 stringByAppendingString:@"."];

    v6 = v7;
  }

  if ([v6 length])
  {
    while (1)
    {
      v8 = [(NSMutableDictionary *)self->_names objectForKeyedSubscript:v6];
      v9 = v8;
      if (v8)
      {
        if (v4)
        {
          v17 = __rev16([v8 unsignedShortValue]);
          [(RamrodMDNSEncoder *)self appendBytes:&v17 length:2];

          goto LABEL_13;
        }
      }

      else
      {
        v10 = [(RamrodMDNSEncoder *)self length];
        if (!(v10 >> 14))
        {
          v11 = [NSNumber numberWithUnsignedInteger:v10 | 0xC000];
          [(NSMutableDictionary *)self->_names setObject:v11 forKeyedSubscript:v6];
        }
      }

      v12 = [v6 rangeOfString:@"."];
      v14 = v13;
      v15 = [v6 substringToIndex:v12];
      v16 = [v6 substringFromIndex:&v12[v14]];
      [(RamrodMDNSEncoder *)self encodeLabel:v15];

      v6 = v16;
      if (![v16 length])
      {
        goto LABEL_12;
      }
    }
  }

  v16 = v6;
LABEL_12:
  [(RamrodMDNSEncoder *)self encodeLabel:&stru_1BA918];
  v6 = v16;
LABEL_13:
}

- (void)encodeRR:(id)a3 type:(unsigned __int16)a4 class:(unsigned __int16)a5 unique:(BOOL)a6
{
  v12 = __rev16(a4);
  if (a6)
  {
    v7 = -32768;
  }

  else
  {
    v7 = 0;
  }

  v11 = bswap32(v7 | a5) >> 16;
  v10 = bswap32(self->_ttl);
  v9 = 0;
  ++self->_recordCount;
  v8 = a3;
  [(RamrodMDNSEncoder *)self _updateHeader];
  [(RamrodMDNSEncoder *)self encodeName:v8 compression:1];

  [(RamrodMDNSEncoder *)self appendBytes:&v12 length:2];
  [(RamrodMDNSEncoder *)self appendBytes:&v11 length:2];
  [(RamrodMDNSEncoder *)self appendBytes:&v10 length:4];
  self->_rdlengthLocation = [(NSMutableData *)self->_packet length];
  [(RamrodMDNSEncoder *)self appendBytes:&v9 length:2];
  self->_rdataLocation = [(NSMutableData *)self->_packet length];
}

- (void)updateRRDataLength
{
  v3 = [(NSMutableData *)self->_packet length];
  rdlengthLocation = self->_rdlengthLocation;
  rdataLocation = self->_rdataLocation;
  v6 = v3 >= rdataLocation;
  v7 = v3 - rdataLocation;
  v8 = !v6;
  if ((v7 & 0xFFFFFFFFFFFF0000) != 0)
  {
    v8 = 1;
  }

  if (v8)
  {
    LODWORD(v7) = 0;
  }

  v9 = bswap32(v7) >> 16;
  [(NSMutableData *)self->_packet replaceBytesInRange:rdlengthLocation withBytes:2, &v9];
}

- (void)encodeA:(id)a3 address:(const in_addr *)a4
{
  [(RamrodMDNSEncoder *)self encodeRR:a3 type:1 class:1];
  [(RamrodMDNSEncoder *)self appendBytes:a4 length:4];

  [(RamrodMDNSEncoder *)self updateRRDataLength];
}

- (void)encodeAAAA:(id)a3 address:(const in6_addr *)a4
{
  [(RamrodMDNSEncoder *)self encodeRR:a3 type:28 class:1];
  [(RamrodMDNSEncoder *)self appendBytes:a4 length:16];

  [(RamrodMDNSEncoder *)self updateRRDataLength];
}

- (BOOL)encodeAnyFamily:(id)a3 address:(const sockaddr *)a4
{
  v6 = a3;
  sa_family = a4->sa_family;
  if (sa_family == 30)
  {
    [(RamrodMDNSEncoder *)self encodeAAAA:v6 address:&a4->sa_data[6]];
  }

  else
  {
    if (sa_family != 2)
    {
      v8 = 0;
      goto LABEL_7;
    }

    [(RamrodMDNSEncoder *)self encodeA:v6 address:&a4->sa_data[2]];
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (void)encodeCNAME:(id)a3 target:(id)a4
{
  v6 = a4;
  [(RamrodMDNSEncoder *)self encodeRR:a3 type:5 class:1];
  [(RamrodMDNSEncoder *)self encodeName:v6 compression:1];

  [(RamrodMDNSEncoder *)self updateRRDataLength];
}

- (void)encodePTR:(id)a3 target:(id)a4
{
  v6 = a4;
  [(RamrodMDNSEncoder *)self encodeRR:a3 type:12 class:1];
  [(RamrodMDNSEncoder *)self encodeName:v6 compression:1];

  [(RamrodMDNSEncoder *)self updateRRDataLength];
}

- (void)encodeTXT:(id)a3 strings:(id)a4
{
  v6 = a4;
  [(RamrodMDNSEncoder *)self encodeRR:a3 type:16 class:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v34 count:16];
  if (!v8)
  {

LABEL_13:
    [(RamrodMDNSEncoder *)self encodeBytes:"" length:0, v14];
    goto LABEL_14;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v15;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v14 + 1) + 8 * i);
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *__s = 0u;
      v19 = 0u;
      if ([v13 getCString:__s maxLength:256 encoding:{4, v14}])
      {
        [(RamrodMDNSEncoder *)self encodeBytes:__s length:strlen(__s)];
        v10 = 1;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v14 objects:v34 count:16];
  }

  while (v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  [(RamrodMDNSEncoder *)self updateRRDataLength];
}

- (void)encodeSRV:(id)a3 priority:(unsigned __int16)a4 weight:(unsigned __int16)a5 port:(unsigned __int16)a6 target:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v12 = a7;
  [(RamrodMDNSEncoder *)self encodeRR:a3 type:33 class:1];
  v15 = __rev16(v9);
  v14 = __rev16(v8);
  v13 = __rev16(v7);
  [(RamrodMDNSEncoder *)self appendBytes:&v15 length:2];
  [(RamrodMDNSEncoder *)self appendBytes:&v14 length:2];
  [(RamrodMDNSEncoder *)self appendBytes:&v13 length:2];
  [(RamrodMDNSEncoder *)self encodeName:v12 compression:1];

  [(RamrodMDNSEncoder *)self updateRRDataLength];
}

@end