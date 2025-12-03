@interface RamrodMDNSEncoder
- (BOOL)encodeAnyFamily:(id)family address:(const sockaddr *)address;
- (RamrodMDNSEncoder)initWithTTL:(unsigned int)l;
- (void)_updateHeader;
- (void)encodeA:(id)a address:(const in_addr *)address;
- (void)encodeAAAA:(id)a address:(const in6_addr *)address;
- (void)encodeBytes:(const void *)bytes length:(unsigned __int8)length;
- (void)encodeCNAME:(id)e target:(id)target;
- (void)encodeLabel:(id)label;
- (void)encodeName:(id)name compression:(BOOL)compression;
- (void)encodePTR:(id)r target:(id)target;
- (void)encodeRR:(id)r type:(unsigned __int16)type class:(unsigned __int16)class unique:(BOOL)unique;
- (void)encodeSRV:(id)v priority:(unsigned __int16)priority weight:(unsigned __int16)weight port:(unsigned __int16)port target:(id)target;
- (void)encodeTXT:(id)t strings:(id)strings;
- (void)updateRRDataLength;
@end

@implementation RamrodMDNSEncoder

- (RamrodMDNSEncoder)initWithTTL:(unsigned int)l
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

    *(v4 + 10) = l;
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

- (void)encodeBytes:(const void *)bytes length:(unsigned __int8)length
{
  lengthCopy = length;
  [(RamrodMDNSEncoder *)self appendBytes:&lengthCopy length:1];
  [(RamrodMDNSEncoder *)self appendBytes:bytes length:lengthCopy];
}

- (void)encodeLabel:(id)label
{
  memset(v5, 0, sizeof(v5));
  if ([label getCString:v5 maxLength:64 encoding:4])
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

- (void)encodeName:(id)name compression:(BOOL)compression
{
  compressionCopy = compression;
  nameCopy = name;
  if (([nameCopy hasSuffix:@"."] & 1) == 0)
  {
    v7 = [nameCopy stringByAppendingString:@"."];

    nameCopy = v7;
  }

  if ([nameCopy length])
  {
    while (1)
    {
      v8 = [(NSMutableDictionary *)self->_names objectForKeyedSubscript:nameCopy];
      v9 = v8;
      if (v8)
      {
        if (compressionCopy)
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
          0xC000 = [NSNumber numberWithUnsignedInteger:v10 | 0xC000];
          [(NSMutableDictionary *)self->_names setObject:0xC000 forKeyedSubscript:nameCopy];
        }
      }

      v12 = [nameCopy rangeOfString:@"."];
      v14 = v13;
      v15 = [nameCopy substringToIndex:v12];
      v16 = [nameCopy substringFromIndex:&v12[v14]];
      [(RamrodMDNSEncoder *)self encodeLabel:v15];

      nameCopy = v16;
      if (![v16 length])
      {
        goto LABEL_12;
      }
    }
  }

  v16 = nameCopy;
LABEL_12:
  [(RamrodMDNSEncoder *)self encodeLabel:&stru_1BA918];
  nameCopy = v16;
LABEL_13:
}

- (void)encodeRR:(id)r type:(unsigned __int16)type class:(unsigned __int16)class unique:(BOOL)unique
{
  v12 = __rev16(type);
  if (unique)
  {
    v7 = -32768;
  }

  else
  {
    v7 = 0;
  }

  v11 = bswap32(v7 | class) >> 16;
  v10 = bswap32(self->_ttl);
  v9 = 0;
  ++self->_recordCount;
  rCopy = r;
  [(RamrodMDNSEncoder *)self _updateHeader];
  [(RamrodMDNSEncoder *)self encodeName:rCopy compression:1];

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

- (void)encodeA:(id)a address:(const in_addr *)address
{
  [(RamrodMDNSEncoder *)self encodeRR:a type:1 class:1];
  [(RamrodMDNSEncoder *)self appendBytes:address length:4];

  [(RamrodMDNSEncoder *)self updateRRDataLength];
}

- (void)encodeAAAA:(id)a address:(const in6_addr *)address
{
  [(RamrodMDNSEncoder *)self encodeRR:a type:28 class:1];
  [(RamrodMDNSEncoder *)self appendBytes:address length:16];

  [(RamrodMDNSEncoder *)self updateRRDataLength];
}

- (BOOL)encodeAnyFamily:(id)family address:(const sockaddr *)address
{
  familyCopy = family;
  sa_family = address->sa_family;
  if (sa_family == 30)
  {
    [(RamrodMDNSEncoder *)self encodeAAAA:familyCopy address:&address->sa_data[6]];
  }

  else
  {
    if (sa_family != 2)
    {
      v8 = 0;
      goto LABEL_7;
    }

    [(RamrodMDNSEncoder *)self encodeA:familyCopy address:&address->sa_data[2]];
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (void)encodeCNAME:(id)e target:(id)target
{
  targetCopy = target;
  [(RamrodMDNSEncoder *)self encodeRR:e type:5 class:1];
  [(RamrodMDNSEncoder *)self encodeName:targetCopy compression:1];

  [(RamrodMDNSEncoder *)self updateRRDataLength];
}

- (void)encodePTR:(id)r target:(id)target
{
  targetCopy = target;
  [(RamrodMDNSEncoder *)self encodeRR:r type:12 class:1];
  [(RamrodMDNSEncoder *)self encodeName:targetCopy compression:1];

  [(RamrodMDNSEncoder *)self updateRRDataLength];
}

- (void)encodeTXT:(id)t strings:(id)strings
{
  stringsCopy = strings;
  [(RamrodMDNSEncoder *)self encodeRR:t type:16 class:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = stringsCopy;
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

- (void)encodeSRV:(id)v priority:(unsigned __int16)priority weight:(unsigned __int16)weight port:(unsigned __int16)port target:(id)target
{
  portCopy = port;
  weightCopy = weight;
  priorityCopy = priority;
  targetCopy = target;
  [(RamrodMDNSEncoder *)self encodeRR:v type:33 class:1];
  v15 = __rev16(priorityCopy);
  v14 = __rev16(weightCopy);
  v13 = __rev16(portCopy);
  [(RamrodMDNSEncoder *)self appendBytes:&v15 length:2];
  [(RamrodMDNSEncoder *)self appendBytes:&v14 length:2];
  [(RamrodMDNSEncoder *)self appendBytes:&v13 length:2];
  [(RamrodMDNSEncoder *)self encodeName:targetCopy compression:1];

  [(RamrodMDNSEncoder *)self updateRRDataLength];
}

@end