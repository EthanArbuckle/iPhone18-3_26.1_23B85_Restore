@interface PPNamedEntity
+ (id)clusterIdentifierFromName:(id)name;
+ (id)describeCategory:(unint64_t)category;
+ (unint64_t)categoryForDescription:(id)description;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNamedEntity:(id)entity;
- (NSSet)featureNames;
- (PPNamedEntity)initWithCoder:(id)coder;
- (PPNamedEntity)initWithName:(id)name category:(unint64_t)category dynamicCategory:(id)dynamicCategory language:(id)language mostRelevantRecord:(id)record;
- (id)description;
- (id)featureValueForName:(id)name;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPNamedEntity

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"name"])
  {
    v5 = MEMORY[0x1E695FE60];
    name = self->_name;
LABEL_3:
    v7 = [v5 featureValueWithString:name];
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"category"])
  {
    v7 = [MEMORY[0x1E695FE60] featureValueWithInt64:self->_category];
    goto LABEL_6;
  }

  if ([nameCopy isEqualToString:@"dynamicCategory"])
  {
    v10 = MEMORY[0x1E695FE60];
    dynamicCategory = [(PPNamedEntity *)self dynamicCategory];
    v12 = dynamicCategory;
    if (dynamicCategory)
    {
      v13 = dynamicCategory;
    }

    else
    {
      v13 = &stru_1F1B327D8;
    }

    v8 = [v10 featureValueWithString:v13];

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"bestLanguage"])
  {
    v5 = MEMORY[0x1E695FE60];
    name = self->_bestLanguage;
    goto LABEL_3;
  }

  if ([nameCopy isEqualToString:@"sentimentScore"])
  {
    v14 = MEMORY[0x1E695FE60];
    [(PPNamedEntity *)self sentimentScore];
    v7 = [v14 featureValueWithDouble:?];
    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (NSSet)featureNames
{
  if (featureNames__pasOnceToken6 != -1)
  {
    dispatch_once(&featureNames__pasOnceToken6, &__block_literal_global_244);
  }

  v3 = featureNames__pasExprOnceResult_245;

  return v3;
}

void __29__PPNamedEntity_featureNames__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"name", @"bestLanguage", @"category", @"dynamicCategory", @"sentimentScore", 0}];
  objc_autoreleasePoolPop(v1);
  v3 = featureNames__pasExprOnceResult_245;
  featureNames__pasExprOnceResult_245 = v2;

  objc_autoreleasePoolPop(v0);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = self->_name;
  v5 = [PPNamedEntity describeCategory:self->_category];
  v6 = [v3 initWithFormat:@"<PPNamedEntity n:'%@' c:'%@' l:%@>", name, v5, self->_bestLanguage];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPNamedEntity *)self isEqualToNamedEntity:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToNamedEntity:(id)entity
{
  entityCopy = entity;
  v5 = entityCopy;
  if (entityCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if (entityCopy)
    {
      v6 = self->_name;
      name = [(PPNamedEntity *)v5 name];
      if (v6 | name)
      {
        v11 = name;
        LOBYTE(v12) = 0;
        if (!v6 || !name)
        {
          goto LABEL_21;
        }

        v12 = [(NSString *)v6 isEqualToString:name];

        if (!v12)
        {
          goto LABEL_22;
        }
      }

      category = self->_category;
      if (category == [(PPNamedEntity *)v5 category])
      {
        v6 = self->_dynamicCategory;
        dynamicCategory = [(PPNamedEntity *)v5 dynamicCategory];
        if (!(v6 | dynamicCategory))
        {
LABEL_6:
          v6 = self->_bestLanguage;
          bestLanguage = [(PPNamedEntity *)v5 bestLanguage];
          if (v6 | bestLanguage)
          {
            v11 = bestLanguage;
            LOBYTE(v12) = 0;
            if (v6 && bestLanguage)
            {
              LOBYTE(v12) = [(NSString *)v6 isEqualToString:bestLanguage];
            }
          }

          else
          {
            v11 = 0;
            v6 = 0;
            LOBYTE(v12) = 1;
          }

          goto LABEL_21;
        }

        v11 = dynamicCategory;
        LOBYTE(v12) = 0;
        if (v6 && dynamicCategory)
        {
          v12 = [(NSString *)v6 isEqualToString:dynamicCategory];

          if (!v12)
          {
            goto LABEL_22;
          }

          goto LABEL_6;
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    LOBYTE(v12) = 0;
  }

LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  v3 = self->_category ^ [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_bestLanguage hash];
  return v3 ^ v4 ^ [(NSString *)self->_dynamicCategory hash];
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeInt32:LODWORD(self->_category) forKey:@"cat"];
  [coderCopy encodeObject:self->_dynamicCategory forKey:@"dcat"];
  [coderCopy encodeObject:self->_bestLanguage forKey:@"lang"];
  mostRelevantRecord = [(PPNamedEntity *)self mostRelevantRecord];
  [coderCopy encodeObject:mostRelevantRecord forKey:@"rec"];
}

- (PPNamedEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"name"];
  v7 = [coderCopy decodeInt32ForKey:@"cat"];
  v8 = [coderCopy decodeObjectOfClass:v5 forKey:@"dcat"];
  v9 = [coderCopy decodeObjectOfClass:v5 forKey:@"lang"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rec"];

  if (v6)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PPNamedEntity *)self initWithName:v6 category:v7 dynamicCategory:v8 language:v9 mostRelevantRecord:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (PPNamedEntity)initWithName:(id)name category:(unint64_t)category dynamicCategory:(id)dynamicCategory language:(id)language mostRelevantRecord:(id)record
{
  nameCopy = name;
  dynamicCategoryCopy = dynamicCategory;
  languageCopy = language;
  recordCopy = record;
  if (nameCopy)
  {
    if (languageCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPNamedEntity.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"language"}];

    if (recordCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPNamedEntity.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"name"}];

  if (!languageCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (recordCopy)
  {
LABEL_4:
    v18 = [[PPNamedEntityWithRecord alloc] initWithName:nameCopy category:category dynamicCategory:dynamicCategoryCopy language:languageCopy mostRelevantRecord:recordCopy];
    goto LABEL_10;
  }

LABEL_7:
  v27.receiver = self;
  v27.super_class = PPNamedEntity;
  v19 = [(PPNamedEntity *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_name, name);
    v20->_category = category;
    objc_storeStrong(&v20->_dynamicCategory, dynamicCategory);
    objc_storeStrong(&v20->_bestLanguage, language);
    v21 = [PPNamedEntity clusterIdentifierFromName:nameCopy];
    clusterIdentifier = v20->_clusterIdentifier;
    v20->_clusterIdentifier = v21;
  }

  v18 = v20;
  self = &v18->super;
LABEL_10:
  p_super = &v18->super;

  return p_super;
}

+ (id)clusterIdentifierFromName:(id)name
{
  nameCopy = name;
  v4 = objc_autoreleasePoolPush();
  lowercaseString = [nameCopy lowercaseString];
  objc_autoreleasePoolPop(v4);
  if ([nameCopy isEqualToString:lowercaseString])
  {
    v6 = nameCopy;

    lowercaseString = v6;
  }

  v7 = [lowercaseString copy];

  return v7;
}

+ (unint64_t)categoryForDescription:(id)description
{
  v11[21] = *MEMORY[0x1E69E9840];
  v10[0] = @"person";
  v10[1] = @"organization";
  v11[0] = &unk_1F1B45CE8;
  v11[1] = &unk_1F1B45D00;
  v10[2] = @"location";
  v10[3] = @"restaurant";
  v11[2] = &unk_1F1B45D18;
  v11[3] = &unk_1F1B45D30;
  v10[4] = @"activity location";
  v10[5] = @"media";
  v11[4] = &unk_1F1B45D48;
  v11[5] = &unk_1F1B45D60;
  v10[6] = @"artist";
  v10[7] = @"street address";
  v11[6] = &unk_1F1B45D78;
  v11[7] = &unk_1F1B45D90;
  v10[8] = @"city";
  v10[9] = @"state";
  v11[8] = &unk_1F1B45DA8;
  v11[9] = &unk_1F1B45DC0;
  v10[10] = @"country";
  v10[11] = @"full address";
  v11[10] = &unk_1F1B45DD8;
  v11[11] = &unk_1F1B45DF0;
  v10[12] = @"tourist attraction";
  v10[13] = @"event title";
  v11[12] = &unk_1F1B45E08;
  v11[13] = &unk_1F1B45E20;
  v10[14] = @"sports team";
  v10[15] = @"professional athlete";
  v11[14] = &unk_1F1B45E38;
  v11[15] = &unk_1F1B45E50;
  v10[16] = @"musician";
  v10[17] = @"movie";
  v11[16] = &unk_1F1B45E68;
  v11[17] = &unk_1F1B45E80;
  v10[18] = @"dynamic";
  v10[19] = @"politician";
  v11[18] = &unk_1F1B45E98;
  v11[19] = &unk_1F1B45EB0;
  v10[20] = @"tv show";
  v11[20] = &unk_1F1B45EC8;
  v3 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v5 = [v3 dictionaryWithObjects:v11 forKeys:v10 count:21];
  v6 = [v5 objectForKeyedSubscript:descriptionCopy];

  if (v6)
  {
    unsignedIntValue = [v6 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return unsignedIntValue;
}

+ (id)describeCategory:(unint64_t)category
{
  if (category - 1 >= 0x15)
  {
    category = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown (%lu)", category];
    _pas_stringBackedByUTF8CString = [category _pas_stringBackedByUTF8CString];
  }

  else
  {
    _pas_stringBackedByUTF8CString = off_1E77F5F10[category - 1];
  }

  return _pas_stringBackedByUTF8CString;
}

@end