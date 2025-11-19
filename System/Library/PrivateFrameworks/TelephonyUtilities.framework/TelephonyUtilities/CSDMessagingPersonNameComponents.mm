@interface CSDMessagingPersonNameComponents
- (BOOL)isEqual:(id)a3;
- (CSDMessagingPersonNameComponents)initWithPersonNameComponents:(id)a3;
- (NSPersonNameComponents)personNameComponents;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
    v12 = [(CSDMessagingPersonNameComponents *)phoneticRepresentation dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"phoneticRepresentation"];
  }

  return v4;
}

- (CSDMessagingPersonNameComponents)initWithPersonNameComponents:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CSDMessagingPersonNameComponents;
  v5 = [(CSDMessagingPersonNameComponents *)&v21 init];
  if (v5)
  {
    v6 = [v4 givenName];
    [(CSDMessagingPersonNameComponents *)v5 setGivenName:v6];

    v7 = [v4 middleName];
    [(CSDMessagingPersonNameComponents *)v5 setMiddleName:v7];

    v8 = [v4 familyName];
    [(CSDMessagingPersonNameComponents *)v5 setFamilyName:v8];

    v9 = [v4 namePrefix];
    [(CSDMessagingPersonNameComponents *)v5 setNamePrefix:v9];

    v10 = [v4 nameSuffix];
    [(CSDMessagingPersonNameComponents *)v5 setNameSuffix:v10];

    v11 = [v4 nickname];
    [(CSDMessagingPersonNameComponents *)v5 setNickname:v11];

    v12 = [v4 phoneticRepresentation];

    if (v12)
    {
      v13 = objc_alloc_init(CSDMessagingPersonNameComponents);
      v14 = [v4 phoneticRepresentation];
      v15 = [v14 givenName];
      [(CSDMessagingPersonNameComponents *)v13 setGivenName:v15];

      v16 = [v4 phoneticRepresentation];
      v17 = [v16 middleName];
      [(CSDMessagingPersonNameComponents *)v13 setMiddleName:v17];

      v18 = [v4 phoneticRepresentation];
      v19 = [v18 familyName];
      [(CSDMessagingPersonNameComponents *)v13 setFamilyName:v19];

      [(CSDMessagingPersonNameComponents *)v5 setPhoneticRepresentation:v13];
    }
  }

  return v5;
}

- (NSPersonNameComponents)personNameComponents
{
  v3 = objc_alloc_init(NSPersonNameComponents);
  v4 = [(CSDMessagingPersonNameComponents *)self givenName];
  [v3 setGivenName:v4];

  v5 = [(CSDMessagingPersonNameComponents *)self middleName];
  [v3 setMiddleName:v5];

  v6 = [(CSDMessagingPersonNameComponents *)self familyName];
  [v3 setFamilyName:v6];

  v7 = [(CSDMessagingPersonNameComponents *)self namePrefix];
  [v3 setNamePrefix:v7];

  v8 = [(CSDMessagingPersonNameComponents *)self nameSuffix];
  [v3 setNameSuffix:v8];

  v9 = [(CSDMessagingPersonNameComponents *)self nickname];
  [v3 setNickname:v9];

  v10 = [(CSDMessagingPersonNameComponents *)self phoneticRepresentation];

  if (v10)
  {
    v11 = objc_alloc_init(NSPersonNameComponents);
    v12 = [(CSDMessagingPersonNameComponents *)self phoneticRepresentation];
    v13 = [v12 givenName];
    [v11 setGivenName:v13];

    v14 = [(CSDMessagingPersonNameComponents *)self phoneticRepresentation];
    v15 = [v14 middleName];
    [v11 setMiddleName:v15];

    v16 = [(CSDMessagingPersonNameComponents *)self phoneticRepresentation];
    v17 = [v16 familyName];
    [v11 setFamilyName:v17];

    [v3 setPhoneticRepresentation:v11];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingPersonNameComponents;
  v3 = [(CSDMessagingPersonNameComponents *)&v7 description];
  v4 = [(CSDMessagingPersonNameComponents *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_namePrefix)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_givenName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_middleName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_familyName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_nameSuffix)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_phoneticRepresentation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_namePrefix)
  {
    [v4 setNamePrefix:?];
    v4 = v5;
  }

  if (self->_givenName)
  {
    [v5 setGivenName:?];
    v4 = v5;
  }

  if (self->_middleName)
  {
    [v5 setMiddleName:?];
    v4 = v5;
  }

  if (self->_familyName)
  {
    [v5 setFamilyName:?];
    v4 = v5;
  }

  if (self->_nameSuffix)
  {
    [v5 setNameSuffix:?];
    v4 = v5;
  }

  if (self->_nickname)
  {
    [v5 setNickname:?];
    v4 = v5;
  }

  if (self->_phoneticRepresentation)
  {
    [v5 setPhoneticRepresentation:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_namePrefix copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_givenName copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_middleName copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_familyName copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(NSString *)self->_nameSuffix copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_nickname copyWithZone:a3];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(CSDMessagingPersonNameComponents *)self->_phoneticRepresentation copyWithZone:a3];
  v19 = v5[7];
  v5[7] = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((namePrefix = self->_namePrefix, !(namePrefix | v4[4])) || -[NSString isEqual:](namePrefix, "isEqual:")) && ((givenName = self->_givenName, !(givenName | v4[2])) || -[NSString isEqual:](givenName, "isEqual:")) && ((middleName = self->_middleName, !(middleName | v4[3])) || -[NSString isEqual:](middleName, "isEqual:")) && ((familyName = self->_familyName, !(familyName | v4[1])) || -[NSString isEqual:](familyName, "isEqual:")) && ((nameSuffix = self->_nameSuffix, !(nameSuffix | v4[5])) || -[NSString isEqual:](nameSuffix, "isEqual:")) && ((nickname = self->_nickname, !(nickname | v4[6])) || -[NSString isEqual:](nickname, "isEqual:")))
  {
    phoneticRepresentation = self->_phoneticRepresentation;
    if (phoneticRepresentation | v4[7])
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

- (void)mergeFrom:(id)a3
{
  v6 = a3;
  if (v6[4])
  {
    [(CSDMessagingPersonNameComponents *)self setNamePrefix:?];
  }

  if (v6[2])
  {
    [(CSDMessagingPersonNameComponents *)self setGivenName:?];
  }

  if (v6[3])
  {
    [(CSDMessagingPersonNameComponents *)self setMiddleName:?];
  }

  if (v6[1])
  {
    [(CSDMessagingPersonNameComponents *)self setFamilyName:?];
  }

  if (v6[5])
  {
    [(CSDMessagingPersonNameComponents *)self setNameSuffix:?];
  }

  if (v6[6])
  {
    [(CSDMessagingPersonNameComponents *)self setNickname:?];
  }

  phoneticRepresentation = self->_phoneticRepresentation;
  v5 = v6[7];
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