@interface PRChipInfo
- (BOOL)isEqual:(id)a3;
- (PRChipInfo)initWithCoder:(id)a3;
- (PRChipInfo)initWithECID:(unint64_t)a3 chipID:(unsigned __int16)a4 boardID:(unsigned __int16)a5 bootMode:(unsigned int)a6 prodMode:(unsigned __int8)a7 secureMode:(unsigned __int8)a8 securityDomain:(unsigned __int8)a9 chipRevision:(unsigned __int16)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRChipInfo

- (PRChipInfo)initWithECID:(unint64_t)a3 chipID:(unsigned __int16)a4 boardID:(unsigned __int16)a5 bootMode:(unsigned int)a6 prodMode:(unsigned __int8)a7 secureMode:(unsigned __int8)a8 securityDomain:(unsigned __int8)a9 chipRevision:(unsigned __int16)a10
{
  v17.receiver = self;
  v17.super_class = PRChipInfo;
  result = [(PRChipInfo *)&v17 init];
  if (result)
  {
    result->_ECID = a3;
    result->_chipID = a4;
    result->_boardID = a5;
    result->_bootMode = a6;
    result->_prodMode = a7;
    result->_secureMode = a8;
    result->_securityDomain = a9;
  }

  return result;
}

- (PRChipInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"ECID"];
  v6 = [v4 decodeIntForKey:@"chipID"];
  v7 = [v4 decodeIntForKey:@"boardID"];
  v8 = [v4 decodeInt32ForKey:@"bootMode"];
  v9 = [v4 decodeIntForKey:@"prodMode"];
  v10 = [v4 decodeIntForKey:@"secureMode"];
  v11 = [v4 decodeIntForKey:@"securityDomain"];
  WORD1(v14) = [v4 decodeIntForKey:@"chipRevision"];
  LOBYTE(v14) = v11;
  v12 = [(PRChipInfo *)self initWithECID:v5 chipID:v6 boardID:v7 bootMode:v8 prodMode:v9 secureMode:v10 securityDomain:v14 chipRevision:?];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_ECID forKey:@"ECID"];
  [v4 encodeInt:self->_chipID forKey:@"chipID"];
  [v4 encodeInt:self->_boardID forKey:@"boardID"];
  [v4 encodeInt32:self->_bootMode forKey:@"bootMode"];
  [v4 encodeInt:self->_prodMode forKey:@"prodMode"];
  [v4 encodeInt:self->_secureMode forKey:@"secureMode"];
  [v4 encodeInt:self->_securityDomain forKey:@"securityDomain"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRChipInfo alloc];
  WORD1(v6) = self->_chipRevision;
  LOBYTE(v6) = self->_securityDomain;
  return [(PRChipInfo *)v4 initWithECID:self->_ECID chipID:self->_chipID boardID:self->_boardID bootMode:self->_bootMode prodMode:self->_prodMode secureMode:self->_secureMode securityDomain:v6 chipRevision:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 ECID];
    if (v6 == -[PRChipInfo ECID](self, "ECID") && (v7 = [v5 chipID], v7 == -[PRChipInfo chipID](self, "chipID")) && (v8 = objc_msgSend(v5, "boardID"), v8 == -[PRChipInfo boardID](self, "boardID")) && (v9 = objc_msgSend(v5, "bootMode"), v9 == -[PRChipInfo bootMode](self, "bootMode")) && (v10 = objc_msgSend(v5, "prodMode"), v10 == -[PRChipInfo prodMode](self, "prodMode")) && (v11 = objc_msgSend(v5, "secureMode"), v11 == -[PRChipInfo secureMode](self, "secureMode")) && (v12 = objc_msgSend(v5, "securityDomain"), v12 == -[PRChipInfo securityDomain](self, "securityDomain")))
    {
      v13 = [v5 chipRevision];
      v14 = v13 == [(PRChipInfo *)self chipRevision];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end