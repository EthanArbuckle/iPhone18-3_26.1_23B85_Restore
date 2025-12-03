@interface CSDMessagingPersonNameComponents
- (BOOL)isEqual:(id)equal;
- (CSDMessagingPersonNameComponents)initWithPersonNameComponents:(id)components;
- (NSPersonNameComponents)personNameComponents;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingPersonNameComponents

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  namePrefix = self->_namePrefix;
  if (namePrefix)
  {
    [v3 setObject:namePrefix forKey:@"namePrefix"];
  }

  givenName = self->_givenName;
  if (givenName)
  {
    [v4 setObject:givenName forKey:@"givenName"];
  }

  middleName = self->_middleName;
  if (middleName)
  {
    [v4 setObject:middleName forKey:@"middleName"];
  }

  familyName = self->_familyName;
  if (familyName)
  {
    [v4 setObject:familyName forKey:@"familyName"];
  }

  nameSuffix = self->_nameSuffix;
  if (nameSuffix)
  {
    [v4 setObject:nameSuffix forKey:@"nameSuffix"];
  }

  nickname = self->_nickname;
  if (nickname)
  {
    [v4 setObject:nickname forKey:@"nickname"];
  }

  phoneticRepresentation = self->_phoneticRepresentation;
  if (phoneticRepresentation)
  {
    dictionaryRepresentation = [(CSDMessagingPersonNameComponents *)phoneticRepresentation dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"phoneticRepresentation"];
  }

  return v4;
}

- (CSDMessagingPersonNameComponents)initWithPersonNameComponents:(id)components
{
  componentsCopy = components;
  v21.receiver = self;
  v21.super_class = CSDMessagingPersonNameComponents;
  v5 = [(CSDMessagingPersonNameComponents *)&v21 init];
  if (v5)
  {
    givenName = [componentsCopy givenName];
    [(CSDMessagingPersonNameComponents *)v5 setGivenName:givenName];

    middleName = [componentsCopy middleName];
    [(CSDMessagingPersonNameComponents *)v5 setMiddleName:middleName];

    familyName = [componentsCopy familyName];
    [(CSDMessagingPersonNameComponents *)v5 setFamilyName:familyName];

    namePrefix = [componentsCopy namePrefix];
    [(CSDMessagingPersonNameComponents *)v5 setNamePrefix:namePrefix];

    nameSuffix = [componentsCopy nameSuffix];
    [(CSDMessagingPersonNameComponents *)v5 setNameSuffix:nameSuffix];

    nickname = [componentsCopy nickname];
    [(CSDMessagingPersonNameComponents *)v5 setNickname:nickname];

    phoneticRepresentation = [componentsCopy phoneticRepresentation];

    if (phoneticRepresentation)
    {
      v13 = objc_alloc_init(CSDMessagingPersonNameComponents);
      phoneticRepresentation2 = [componentsCopy phoneticRepresentation];
      givenName2 = [phoneticRepresentation2 givenName];
      [(CSDMessagingPersonNameComponents *)v13 setGivenName:givenName2];

      phoneticRepresentation3 = [componentsCopy phoneticRepresentation];
      middleName2 = [phoneticRepresentation3 middleName];
      [(CSDMessagingPersonNameComponents *)v13 setMiddleName:middleName2];

      phoneticRepresentation4 = [componentsCopy phoneticRepresentation];
      familyName2 = [phoneticRepresentation4 familyName];
      [(CSDMessagingPersonNameComponents *)v13 setFamilyName:familyName2];

      [(CSDMessagingPersonNameComponents *)v5 setPhoneticRepresentation:v13];
    }
  }

  return v5;
}

- (NSPersonNameComponents)personNameComponents
{
  v3 = objc_alloc_init(NSPersonNameComponents);
  givenName = [(CSDMessagingPersonNameComponents *)self givenName];
  [v3 setGivenName:givenName];

  middleName = [(CSDMessagingPersonNameComponents *)self middleName];
  [v3 setMiddleName:middleName];

  familyName = [(CSDMessagingPersonNameComponents *)self familyName];
  [v3 setFamilyName:familyName];

  namePrefix = [(CSDMessagingPersonNameComponents *)self namePrefix];
  [v3 setNamePrefix:namePrefix];

  nameSuffix = [(CSDMessagingPersonNameComponents *)self nameSuffix];
  [v3 setNameSuffix:nameSuffix];

  nickname = [(CSDMessagingPersonNameComponents *)self nickname];
  [v3 setNickname:nickname];

  phoneticRepresentation = [(CSDMessagingPersonNameComponents *)self phoneticRepresentation];

  if (phoneticRepresentation)
  {
    v11 = objc_alloc_init(NSPersonNameComponents);
    phoneticRepresentation2 = [(CSDMessagingPersonNameComponents *)self phoneticRepresentation];
    givenName2 = [phoneticRepresentation2 givenName];
    [v11 setGivenName:givenName2];

    phoneticRepresentation3 = [(CSDMessagingPersonNameComponents *)self phoneticRepresentation];
    middleName2 = [phoneticRepresentation3 middleName];
    [v11 setMiddleName:middleName2];

    phoneticRepresentation4 = [(CSDMessagingPersonNameComponents *)self phoneticRepresentation];
    familyName2 = [phoneticRepresentation4 familyName];
    [v11 setFamilyName:familyName2];

    [v3 setPhoneticRepresentation:v11];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingPersonNameComponents;
  v3 = [(CSDMessagingPersonNameComponents *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingPersonNameComponents *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_namePrefix)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_givenName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_middleName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_familyName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_nameSuffix)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_phoneticRepresentation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_namePrefix)
  {
    [toCopy setNamePrefix:?];
    toCopy = v5;
  }

  if (self->_givenName)
  {
    [v5 setGivenName:?];
    toCopy = v5;
  }

  if (self->_middleName)
  {
    [v5 setMiddleName:?];
    toCopy = v5;
  }

  if (self->_familyName)
  {
    [v5 setFamilyName:?];
    toCopy = v5;
  }

  if (self->_nameSuffix)
  {
    [v5 setNameSuffix:?];
    toCopy = v5;
  }

  if (self->_nickname)
  {
    [v5 setNickname:?];
    toCopy = v5;
  }

  if (self->_phoneticRepresentation)
  {
    [v5 setPhoneticRepresentation:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_namePrefix copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_givenName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_middleName copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_familyName copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(NSString *)self->_nameSuffix copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_nickname copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(CSDMessagingPersonNameComponents *)self->_phoneticRepresentation copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((namePrefix = self->_namePrefix, !(namePrefix | equalCopy[4])) || -[NSString isEqual:](namePrefix, "isEqual:")) && ((givenName = self->_givenName, !(givenName | equalCopy[2])) || -[NSString isEqual:](givenName, "isEqual:")) && ((middleName = self->_middleName, !(middleName | equalCopy[3])) || -[NSString isEqual:](middleName, "isEqual:")) && ((familyName = self->_familyName, !(familyName | equalCopy[1])) || -[NSString isEqual:](familyName, "isEqual:")) && ((nameSuffix = self->_nameSuffix, !(nameSuffix | equalCopy[5])) || -[NSString isEqual:](nameSuffix, "isEqual:")) && ((nickname = self->_nickname, !(nickname | equalCopy[6])) || -[NSString isEqual:](nickname, "isEqual:")))
  {
    phoneticRepresentation = self->_phoneticRepresentation;
    if (phoneticRepresentation | equalCopy[7])
    {
      v12 = [(CSDMessagingPersonNameComponents *)phoneticRepresentation isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_namePrefix hash];
  v4 = [(NSString *)self->_givenName hash]^ v3;
  v5 = [(NSString *)self->_middleName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_familyName hash];
  v7 = [(NSString *)self->_nameSuffix hash];
  v8 = v7 ^ [(NSString *)self->_nickname hash];
  return v6 ^ v8 ^ [(CSDMessagingPersonNameComponents *)self->_phoneticRepresentation hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(CSDMessagingPersonNameComponents *)self setNamePrefix:?];
  }

  if (fromCopy[2])
  {
    [(CSDMessagingPersonNameComponents *)self setGivenName:?];
  }

  if (fromCopy[3])
  {
    [(CSDMessagingPersonNameComponents *)self setMiddleName:?];
  }

  if (fromCopy[1])
  {
    [(CSDMessagingPersonNameComponents *)self setFamilyName:?];
  }

  if (fromCopy[5])
  {
    [(CSDMessagingPersonNameComponents *)self setNameSuffix:?];
  }

  if (fromCopy[6])
  {
    [(CSDMessagingPersonNameComponents *)self setNickname:?];
  }

  phoneticRepresentation = self->_phoneticRepresentation;
  v5 = fromCopy[7];
  if (phoneticRepresentation)
  {
    if (v5)
    {
      [(CSDMessagingPersonNameComponents *)phoneticRepresentation mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(CSDMessagingPersonNameComponents *)self setPhoneticRepresentation:?];
  }
}

@end