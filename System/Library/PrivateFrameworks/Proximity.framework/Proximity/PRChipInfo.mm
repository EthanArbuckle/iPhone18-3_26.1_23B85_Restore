@interface PRChipInfo
- (BOOL)isEqual:(id)equal;
- (PRChipInfo)initWithCoder:(id)coder;
- (PRChipInfo)initWithECID:(unint64_t)d chipID:(unsigned __int16)iD boardID:(unsigned __int16)boardID bootMode:(unsigned int)mode prodMode:(unsigned __int8)prodMode secureMode:(unsigned __int8)secureMode securityDomain:(unsigned __int8)domain chipRevision:(unsigned __int16)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRChipInfo

- (PRChipInfo)initWithECID:(unint64_t)d chipID:(unsigned __int16)iD boardID:(unsigned __int16)boardID bootMode:(unsigned int)mode prodMode:(unsigned __int8)prodMode secureMode:(unsigned __int8)secureMode securityDomain:(unsigned __int8)domain chipRevision:(unsigned __int16)self0
{
  v17.receiver = self;
  v17.super_class = PRChipInfo;
  result = [(PRChipInfo *)&v17 init];
  if (result)
  {
    result->_ECID = d;
    result->_chipID = iD;
    result->_boardID = boardID;
    result->_bootMode = mode;
    result->_prodMode = prodMode;
    result->_secureMode = secureMode;
    result->_securityDomain = domain;
  }

  return result;
}

- (PRChipInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"ECID"];
  v6 = [coderCopy decodeIntForKey:@"chipID"];
  v7 = [coderCopy decodeIntForKey:@"boardID"];
  v8 = [coderCopy decodeInt32ForKey:@"bootMode"];
  v9 = [coderCopy decodeIntForKey:@"prodMode"];
  v10 = [coderCopy decodeIntForKey:@"secureMode"];
  v11 = [coderCopy decodeIntForKey:@"securityDomain"];
  WORD1(v14) = [coderCopy decodeIntForKey:@"chipRevision"];
  LOBYTE(v14) = v11;
  v12 = [(PRChipInfo *)self initWithECID:v5 chipID:v6 boardID:v7 bootMode:v8 prodMode:v9 secureMode:v10 securityDomain:v14 chipRevision:?];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_ECID forKey:@"ECID"];
  [coderCopy encodeInt:self->_chipID forKey:@"chipID"];
  [coderCopy encodeInt:self->_boardID forKey:@"boardID"];
  [coderCopy encodeInt32:self->_bootMode forKey:@"bootMode"];
  [coderCopy encodeInt:self->_prodMode forKey:@"prodMode"];
  [coderCopy encodeInt:self->_secureMode forKey:@"secureMode"];
  [coderCopy encodeInt:self->_securityDomain forKey:@"securityDomain"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRChipInfo alloc];
  WORD1(v6) = self->_chipRevision;
  LOBYTE(v6) = self->_securityDomain;
  return [(PRChipInfo *)v4 initWithECID:self->_ECID chipID:self->_chipID boardID:self->_boardID bootMode:self->_bootMode prodMode:self->_prodMode secureMode:self->_secureMode securityDomain:v6 chipRevision:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    eCID = [v5 ECID];
    if (eCID == -[PRChipInfo ECID](self, "ECID") && (v7 = [v5 chipID], v7 == -[PRChipInfo chipID](self, "chipID")) && (v8 = objc_msgSend(v5, "boardID"), v8 == -[PRChipInfo boardID](self, "boardID")) && (v9 = objc_msgSend(v5, "bootMode"), v9 == -[PRChipInfo bootMode](self, "bootMode")) && (v10 = objc_msgSend(v5, "prodMode"), v10 == -[PRChipInfo prodMode](self, "prodMode")) && (v11 = objc_msgSend(v5, "secureMode"), v11 == -[PRChipInfo secureMode](self, "secureMode")) && (v12 = objc_msgSend(v5, "securityDomain"), v12 == -[PRChipInfo securityDomain](self, "securityDomain")))
    {
      chipRevision = [v5 chipRevision];
      v14 = chipRevision == [(PRChipInfo *)self chipRevision];
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