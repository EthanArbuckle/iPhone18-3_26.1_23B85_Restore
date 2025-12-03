@interface PPQuickTypeQuery
+ (id)_labelFromLMFieldString:(id)string qualifiers:(id)qualifiers;
+ (id)_peopleNamesFromLMQualifiers:(id)qualifiers;
+ (id)_subfieldsFromString:(id)string;
+ (id)quickTypeQueryFromLMTokens:(id)tokens localeIdentifier:(id)identifier recipients:(id)recipients bundleIdentifier:(id)bundleIdentifier;
+ (unsigned)_fieldsFromStrings:(id)strings;
+ (unsigned)_semanticTagFromString:(id)string;
+ (unsigned)_subtypeFromString:(id)string;
+ (unsigned)_timeFromString:(id)string;
+ (unsigned)_typeFromString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToQuickTypeQuery:(id)query;
- (BOOL)isResultEquivelentToQuickTypeQuery:(id)query;
- (PPQuickTypeQuery)initWithCoder:(id)coder;
- (PPQuickTypeQuery)initWithType:(unsigned __int8)type subtype:(unsigned __int8)subtype semanticTag:(unsigned __int8)tag fields:(unsigned int)fields time:(unsigned __int8)time options:(unsigned __int8)options subFields:(id)subFields label:(id)self0 people:(id)self1 localeIdentifier:(id)self2 bundleIdentifier:(id)self3 recipients:(id)self4 timeoutSeconds:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPQuickTypeQuery

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *&self->_people;
  v5 = [v3 initWithFormat:@"<PPQuickTypeQuery t:%lu st:%lu sm:%lu f:%lu tm:%lu o:%lu sf:%@ l:%@ p:%@ li:%@ bi:%@ r:%@ to:%@>", self->_type, self->_subtype, self->_semanticTag, self->_fields, self->_time, self->_options, self->_subFields, self->_label, self->_people, self->_localeIdentifier, self->_bundleIdentifier, self->_recipients, self->_timeoutSeconds];

  return v5;
}

- (BOOL)isResultEquivelentToQuickTypeQuery:(id)query
{
  queryCopy = query;
  v5 = queryCopy;
  if (!queryCopy || self->_type != *(queryCopy + 8) || self->_subtype != *(queryCopy + 9) || self->_semanticTag != *(queryCopy + 10) || self->_fields != *(queryCopy + 4) || self->_time != *(queryCopy + 11))
  {
    goto LABEL_21;
  }

  v6 = self->_subFields;
  v7 = v6;
  if (v6 == v5[3])
  {
  }

  else
  {
    v8 = [(NSArray *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v9 = self->_label;
  v10 = v9;
  if (v9 == v5[4])
  {
  }

  else
  {
    v11 = [(NSString *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v12 = self->_people;
  v13 = v12;
  if (v12 == v5[5])
  {
  }

  else
  {
    v14 = [(NSArray *)v12 isEqual:?];

    if ((v14 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v15 = self->_localeIdentifier;
  v16 = v15;
  if (v15 == v5[6])
  {
  }

  else
  {
    v17 = [(NSString *)v15 isEqual:?];

    if ((v17 & 1) == 0)
    {
LABEL_21:
      v18 = 0;
      goto LABEL_22;
    }
  }

  v20 = self->_recipients;
  v21 = v20;
  if (v20 == v5[8])
  {
    v18 = 1;
  }

  else
  {
    v18 = [(NSArray *)v20 isEqual:?];
  }

LABEL_22:
  return v18;
}

- (BOOL)isEqualToQuickTypeQuery:(id)query
{
  queryCopy = query;
  if (!queryCopy || ![(PPQuickTypeQuery *)self isResultEquivelentToQuickTypeQuery:queryCopy]|| self->_options != *(queryCopy + 12))
  {
    goto LABEL_6;
  }

  v5 = self->_bundleIdentifier;
  v6 = v5;
  if (v5 == queryCopy[7])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_6:
      v8 = 0;
      goto LABEL_7;
    }
  }

  v10 = self->_timeoutSeconds;
  v11 = v10;
  if (v10 == queryCopy[9])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSNumber *)v10 isEqual:?];
  }

LABEL_7:
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPQuickTypeQuery *)self isEqualToQuickTypeQuery:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_type;
    *(v4 + 9) = self->_subtype;
    *(v4 + 10) = self->_semanticTag;
    *(v4 + 16) = self->_fields;
    *(v4 + 11) = self->_time;
    *(v4 + 12) = self->_options;
    objc_storeStrong((v4 + 24), self->_subFields);
    objc_storeStrong(v5 + 4, self->_label);
    objc_storeStrong(v5 + 5, self->_people);
    objc_storeStrong(v5 + 6, self->_localeIdentifier);
    objc_storeStrong(v5 + 7, self->_bundleIdentifier);
    objc_storeStrong(v5 + 8, self->_recipients);
    objc_storeStrong(v5 + 9, self->_timeoutSeconds);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt32:type forKey:@"typ"];
  [coderCopy encodeInt32:self->_subtype forKey:@"stp"];
  [coderCopy encodeInt32:self->_semanticTag forKey:@"stg"];
  [coderCopy encodeInt32:self->_fields forKey:@"fld"];
  [coderCopy encodeInt32:self->_time forKey:@"tim"];
  [coderCopy encodeInt32:self->_options forKey:@"opt"];
  [coderCopy encodeObject:self->_subFields forKey:@"sfd"];
  [coderCopy encodeObject:self->_label forKey:@"lab"];
  [coderCopy encodeObject:self->_people forKey:@"pep"];
  [coderCopy encodeObject:self->_localeIdentifier forKey:@"lid"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bid"];
  [coderCopy encodeObject:self->_recipients forKey:@"rec"];
  [coderCopy encodeObject:self->_timeoutSeconds forKey:@"tsc"];
}

- (PPQuickTypeQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v26 = [coderCopy decodeInt32ForKey:@"typ"];
  v25 = [coderCopy decodeInt32ForKey:@"stp"];
  v24 = [coderCopy decodeInt32ForKey:@"stg"];
  v23 = [coderCopy decodeInt32ForKey:@"fld"];
  v21 = [coderCopy decodeInt32ForKey:@"tim"];
  v20 = [coderCopy decodeInt32ForKey:@"opt"];
  v6 = objc_autoreleasePoolPush();
  v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v4, v5, 0}];
  objc_autoreleasePoolPop(v6);
  v7 = [coderCopy decodeObjectOfClasses:v22 forKey:@"sfd"];
  v8 = [coderCopy decodeObjectOfClass:v5 forKey:@"lab"];
  v9 = objc_autoreleasePoolPush();
  v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v4, v5, 0}];
  objc_autoreleasePoolPop(v9);
  v10 = [coderCopy decodeObjectOfClasses:v19 forKey:@"pep"];
  v11 = [coderCopy decodeObjectOfClass:v5 forKey:@"lid"];
  v12 = [coderCopy decodeObjectOfClass:v5 forKey:@"bid"];
  v13 = objc_autoreleasePoolPush();
  v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v4, v5, 0}];
  objc_autoreleasePoolPop(v13);
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"rec"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tsc"];
  v17 = [(PPQuickTypeQuery *)self initWithType:v26 subtype:v25 semanticTag:v24 fields:v23 time:v21 options:v20 subFields:v7 label:v8 people:v10 localeIdentifier:v11 bundleIdentifier:v12 recipients:v15 timeoutSeconds:v16];

  return v17;
}

- (unint64_t)hash
{
  v3 = self->_subtype - self->_type + 32 * self->_type;
  v4 = self->_semanticTag - v3 + 32 * v3;
  v5 = self->_fields - v4 + 32 * v4;
  v6 = self->_time - v5 + 32 * v5;
  v7 = self->_options - v6 + 32 * v6;
  v8 = [(NSArray *)self->_subFields hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_label hash]- v8 + 32 * v8;
  v10 = [(NSArray *)self->_people hash]- v9 + 32 * v9;
  v11 = [(NSString *)self->_localeIdentifier hash]- v10 + 32 * v10;
  v12 = [(NSString *)self->_bundleIdentifier hash]- v11 + 32 * v11;
  return [(NSArray *)self->_recipients hash]- v12 + 32 * v12;
}

- (PPQuickTypeQuery)initWithType:(unsigned __int8)type subtype:(unsigned __int8)subtype semanticTag:(unsigned __int8)tag fields:(unsigned int)fields time:(unsigned __int8)time options:(unsigned __int8)options subFields:(id)subFields label:(id)self0 people:(id)self1 localeIdentifier:(id)self2 bundleIdentifier:(id)self3 recipients:(id)self4 timeoutSeconds:(id)self5
{
  subFieldsCopy = subFields;
  labelCopy = label;
  peopleCopy = people;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  recipientsCopy = recipients;
  secondsCopy = seconds;
  v32.receiver = self;
  v32.super_class = PPQuickTypeQuery;
  v18 = [(PPQuickTypeQuery *)&v32 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = type;
    v18->_subtype = subtype;
    v18->_semanticTag = tag;
    v18->_fields = fields;
    v18->_time = time;
    v18->_options = options;
    objc_storeStrong(&v18->_subFields, subFields);
    objc_storeStrong(&v19->_label, label);
    objc_storeStrong(&v19->_people, people);
    objc_storeStrong(&v19->_localeIdentifier, identifier);
    objc_storeStrong(&v19->_bundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v19->_recipients, recipients);
    objc_storeStrong(&v19->_timeoutSeconds, seconds);
  }

  return v19;
}

+ (id)_peopleNamesFromLMQualifiers:(id)qualifiers
{
  v32[1] = *MEMORY[0x1E69E9840];
  qualifiersCopy = qualifiers;
  v4 = objc_opt_new();
  v5 = [qualifiersCopy objectForKeyedSubscript:*MEMORY[0x1E69ABE38]];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v32[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    }

    v9 = v6;
    goto LABEL_32;
  }

  v7 = [qualifiersCopy objectForKeyedSubscript:*MEMORY[0x1E69ABE48]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
LABEL_10:
    v10 = v8;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_12:
  v11 = [qualifiersCopy objectForKeyedSubscript:*MEMORY[0x1E69ABF10]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
LABEL_16:
    v13 = v12;
    if (v10 && v12)
    {
      v27 = v11;
      v28 = v7;
      v29 = qualifiersCopy;
      v14 = [v12 count];
      v15 = [v10 count];
      if (v14 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      v17 = v4;
      if (v16)
      {
        for (i = 0; i != v16; ++i)
        {
          v19 = objc_autoreleasePoolPush();
          v20 = [v10 objectAtIndexedSubscript:i];
          v21 = [v20 stringByAppendingString:@" "];
          v22 = [v13 objectAtIndexedSubscript:i];
          v23 = [v21 stringByAppendingString:v22];
          [v17 addObject:v23];

          objc_autoreleasePoolPop(v19);
        }
      }

      v9 = v17;
      v5 = 0;
      qualifiersCopy = v29;
      v4 = v17;
      v11 = v27;
      v7 = v28;
      goto LABEL_31;
    }

    if (!v10)
    {
      if (!v12)
      {
        v9 = 0;
        goto LABEL_31;
      }

      v24 = v12;
      v13 = v24;
      goto LABEL_30;
    }

LABEL_29:
    v24 = v10;
LABEL_30:
    v9 = v24;
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    goto LABEL_16;
  }

  v13 = 0;
  v9 = 0;
  if (v10)
  {
    goto LABEL_29;
  }

LABEL_31:

LABEL_32:
  v25 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_labelFromLMFieldString:(id)string qualifiers:(id)qualifiers
{
  stringCopy = string;
  qualifiersCopy = qualifiers;
  if (_labelFromLMFieldString_qualifiers__once != -1)
  {
    dispatch_once(&_labelFromLMFieldString_qualifiers__once, &__block_literal_global_208);
  }

  v7 = [qualifiersCopy objectForKeyedSubscript:*MEMORY[0x1E69ABE80]];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [_labelFromLMFieldString_qualifiers__map objectForKeyedSubscript:stringCopy];
  }

  v10 = v9;

  return v10;
}

void __55__PPQuickTypeQuery__labelFromLMFieldString_qualifiers___block_invoke()
{
  v12[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695CB90];
  v1 = *MEMORY[0x1E69ABE60];
  v11[0] = *MEMORY[0x1E69ABE88];
  v11[1] = v1;
  v2 = *MEMORY[0x1E695CB60];
  v12[0] = v0;
  v12[1] = v2;
  v3 = *MEMORY[0x1E695CBD8];
  v4 = *MEMORY[0x1E69ABE20];
  v11[2] = *MEMORY[0x1E69ABF48];
  v11[3] = v4;
  v5 = *MEMORY[0x1E695CB78];
  v12[2] = v3;
  v12[3] = v5;
  v6 = *MEMORY[0x1E69ABF38];
  v11[4] = *MEMORY[0x1E69ABE50];
  v11[5] = v6;
  v12[4] = v2;
  v12[5] = v3;
  v7 = *MEMORY[0x1E69ABF40];
  v11[6] = *MEMORY[0x1E69ABE58];
  v11[7] = v7;
  v12[6] = v2;
  v12[7] = v3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:8];
  v9 = _labelFromLMFieldString_qualifiers__map;
  _labelFromLMFieldString_qualifiers__map = v8;

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)_subfieldsFromString:(id)string
{
  v9[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (_subfieldsFromString__once != -1)
  {
    dispatch_once(&_subfieldsFromString__once, &__block_literal_global_206);
  }

  v4 = [_subfieldsFromString__map objectForKeyedSubscript:stringCopy];
  v5 = v4;
  if (v4)
  {
    v9[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __41__PPQuickTypeQuery__subfieldsFromString___block_invoke()
{
  v0 = _subfieldsFromString__map;
  _subfieldsFromString__map = MEMORY[0x1E695E0F8];
}

+ (unsigned)_timeFromString:(id)string
{
  v3 = _timeFromString__once;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&_timeFromString__once, &__block_literal_global_204);
  }

  v5 = [_timeFromString__map objectForKeyedSubscript:stringCopy];

  unsignedIntValue = [v5 unsignedIntValue];
  return unsignedIntValue;
}

void __36__PPQuickTypeQuery__timeFromString___block_invoke()
{
  v7[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69ABEB0];
  v6[0] = *MEMORY[0x1E69ABEA8];
  v6[1] = v0;
  v7[0] = &unk_1F1B45958;
  v7[1] = &unk_1F1B45958;
  v1 = *MEMORY[0x1E69ABE68];
  v6[2] = *MEMORY[0x1E69ABDE8];
  v6[3] = v1;
  v7[2] = &unk_1F1B45958;
  v7[3] = &unk_1F1B45970;
  v2 = *MEMORY[0x1E69ABE70];
  v6[4] = *MEMORY[0x1E69ABF20];
  v6[5] = v2;
  v7[4] = &unk_1F1B45958;
  v7[5] = &unk_1F1B45958;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:6];
  v4 = _timeFromString__map;
  _timeFromString__map = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (unsigned)_fieldsFromStrings:(id)strings
{
  v18 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  if (_fieldsFromStrings__once != -1)
  {
    dispatch_once(&_fieldsFromStrings__once, &__block_literal_global_163);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = stringsCopy;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [_fieldsFromStrings__map objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];
        v7 |= [v10 unsignedIntValue];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

void __39__PPQuickTypeQuery__fieldsFromStrings___block_invoke()
{
  v18[28] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69ABE88];
  v17[0] = *MEMORY[0x1E69ABEC0];
  v17[1] = v0;
  v18[0] = &unk_1F1B45B20;
  v18[1] = &unk_1F1B45B20;
  v1 = *MEMORY[0x1E69ABF48];
  v17[2] = *MEMORY[0x1E69ABE60];
  v17[3] = v1;
  v18[2] = &unk_1F1B45B20;
  v18[3] = &unk_1F1B45B20;
  v2 = *MEMORY[0x1E69ABE08];
  v17[4] = *MEMORY[0x1E69ABE20];
  v17[5] = v2;
  v18[4] = &unk_1F1B45B20;
  v18[5] = &unk_1F1B45B38;
  v3 = *MEMORY[0x1E69ABE50];
  v17[6] = *MEMORY[0x1E69ABDC0];
  v17[7] = v3;
  v18[6] = &unk_1F1B45B50;
  v18[7] = &unk_1F1B45B50;
  v4 = *MEMORY[0x1E69ABE40];
  v17[8] = *MEMORY[0x1E69ABF38];
  v17[9] = v4;
  v18[8] = &unk_1F1B45B50;
  v18[9] = &unk_1F1B45B98;
  v5 = *MEMORY[0x1E69ABE30];
  v17[10] = *MEMORY[0x1E69ABF08];
  v17[11] = v5;
  v18[10] = &unk_1F1B45BB0;
  v18[11] = &unk_1F1B45BC8;
  v6 = *MEMORY[0x1E69ABF40];
  v17[12] = *MEMORY[0x1E69ABE58];
  v17[13] = v6;
  v18[12] = &unk_1F1B45B68;
  v18[13] = &unk_1F1B45B68;
  v7 = *MEMORY[0x1E69ABDD0];
  v17[14] = *MEMORY[0x1E69ABEC8];
  v17[15] = v7;
  v18[14] = &unk_1F1B45B80;
  v18[15] = &unk_1F1B45BE0;
  v8 = *MEMORY[0x1E69ABEA8];
  v17[16] = *MEMORY[0x1E69ABDC8];
  v17[17] = v8;
  v18[16] = &unk_1F1B45BF8;
  v18[17] = &unk_1F1B45C28;
  v9 = *MEMORY[0x1E69ABDE8];
  v17[18] = *MEMORY[0x1E69ABEB0];
  v17[19] = v9;
  v18[18] = &unk_1F1B45C58;
  v18[19] = &unk_1F1B45C70;
  v10 = *MEMORY[0x1E69ABF20];
  v17[20] = *MEMORY[0x1E69ABE68];
  v17[21] = v10;
  v18[20] = &unk_1F1B45C58;
  v18[21] = &unk_1F1B45C58;
  v11 = *MEMORY[0x1E69ABEF8];
  v17[22] = *MEMORY[0x1E69ABE70];
  v17[23] = v11;
  v18[22] = &unk_1F1B45C40;
  v18[23] = &unk_1F1B45C10;
  v12 = *MEMORY[0x1E69ABE00];
  v17[24] = *MEMORY[0x1E69ABDF8];
  v17[25] = v12;
  v18[24] = &unk_1F1B45CA0;
  v18[25] = &unk_1F1B45C88;
  v13 = *MEMORY[0x1E69ABDB8];
  v17[26] = *MEMORY[0x1E69ABDF0];
  v17[27] = v13;
  v18[26] = &unk_1F1B45CB8;
  v18[27] = &unk_1F1B45CD0;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:28];
  v15 = _fieldsFromStrings__map;
  _fieldsFromStrings__map = v14;

  v16 = *MEMORY[0x1E69E9840];
}

+ (unsigned)_semanticTagFromString:(id)string
{
  v3 = _semanticTagFromString__once;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&_semanticTagFromString__once, &__block_literal_global_147);
  }

  v5 = [_semanticTagFromString__map objectForKeyedSubscript:stringCopy];

  unsignedIntValue = [v5 unsignedIntValue];
  return unsignedIntValue;
}

void __43__PPQuickTypeQuery__semanticTagFromString___block_invoke()
{
  v4[22] = *MEMORY[0x1E69E9840];
  v3[0] = @"name";
  v3[1] = @"honorifix-prefix";
  v4[0] = &unk_1F1B45A48;
  v4[1] = &unk_1F1B45A90;
  v3[2] = @"given-name";
  v3[3] = @"additional-name";
  v4[2] = &unk_1F1B45A78;
  v4[3] = &unk_1F1B45B08;
  v3[4] = @"family-name";
  v3[5] = @"nickname";
  v4[4] = &unk_1F1B45A60;
  v4[5] = &unk_1F1B45B08;
  v3[6] = @"honorifix-suffix";
  v3[7] = @"organization-title";
  v4[6] = &unk_1F1B45AA8;
  v4[7] = &unk_1F1B45B08;
  v3[8] = @"organization";
  v3[9] = @"location";
  v4[8] = &unk_1F1B45970;
  v4[9] = &unk_1F1B45988;
  v3[10] = @"street-address";
  v3[11] = @"address-line1";
  v4[10] = &unk_1F1B45958;
  v4[11] = &unk_1F1B459A0;
  v3[12] = @"address-line2";
  v3[13] = @"address-level2";
  v4[12] = &unk_1F1B45B08;
  v4[13] = &unk_1F1B459B8;
  v3[14] = @"address-level1+2";
  v3[15] = @"address-level1";
  v4[14] = &unk_1F1B45A18;
  v4[15] = &unk_1F1B459E8;
  v3[16] = @"address-level3";
  v3[17] = @"country-name";
  v4[16] = &unk_1F1B45A30;
  v4[17] = &unk_1F1B45A00;
  v3[18] = @"postal-code";
  v3[19] = @"tel";
  v4[18] = &unk_1F1B459D0;
  v4[19] = &unk_1F1B45AD8;
  v3[20] = @"email";
  v3[21] = @"url";
  v4[20] = &unk_1F1B45AC0;
  v4[21] = &unk_1F1B45AF0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:22];
  v1 = _semanticTagFromString__map;
  _semanticTagFromString__map = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (unsigned)_subtypeFromString:(id)string
{
  v3 = _subtypeFromString__once;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&_subtypeFromString__once, &__block_literal_global_131);
  }

  v5 = [_subtypeFromString__map objectForKeyedSubscript:stringCopy];

  unsignedIntValue = [v5 unsignedIntValue];
  return unsignedIntValue;
}

void __39__PPQuickTypeQuery__subtypeFromString___block_invoke()
{
  v13[18] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69ABEF0];
  v12[0] = *MEMORY[0x1E69ABE28];
  v12[1] = v0;
  v13[0] = &unk_1F1B45958;
  v13[1] = &unk_1F1B45970;
  v1 = *MEMORY[0x1E69ABEA8];
  v12[2] = *MEMORY[0x1E69ABF18];
  v12[3] = v1;
  v13[2] = &unk_1F1B45970;
  v13[3] = &unk_1F1B45988;
  v2 = *MEMORY[0x1E69ABE70];
  v12[4] = *MEMORY[0x1E69ABF20];
  v12[5] = v2;
  v13[4] = &unk_1F1B45988;
  v13[5] = &unk_1F1B45988;
  v3 = *MEMORY[0x1E69ABDE8];
  v12[6] = *MEMORY[0x1E69ABEB0];
  v12[7] = v3;
  v13[6] = &unk_1F1B459A0;
  v13[7] = &unk_1F1B459A0;
  v4 = *MEMORY[0x1E69ABEE0];
  v12[8] = *MEMORY[0x1E69ABE68];
  v12[9] = v4;
  v13[8] = &unk_1F1B459A0;
  v13[9] = &unk_1F1B459D0;
  v5 = *MEMORY[0x1E69ABDF8];
  v12[10] = *MEMORY[0x1E69ABED8];
  v12[11] = v5;
  v13[10] = &unk_1F1B459E8;
  v13[11] = &unk_1F1B45A00;
  v6 = *MEMORY[0x1E69ABE00];
  v12[12] = *MEMORY[0x1E69ABDF0];
  v12[13] = v6;
  v13[12] = &unk_1F1B45A00;
  v13[13] = &unk_1F1B45A00;
  v7 = *MEMORY[0x1E69ABE90];
  v12[14] = *MEMORY[0x1E69ABDE0];
  v12[15] = v7;
  v13[14] = &unk_1F1B45A18;
  v13[15] = &unk_1F1B45A30;
  v8 = *MEMORY[0x1E69ABE18];
  v12[16] = *MEMORY[0x1E69ABE98];
  v12[17] = v8;
  v13[16] = &unk_1F1B45A48;
  v13[17] = &unk_1F1B45A60;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:18];
  v10 = _subtypeFromString__map;
  _subtypeFromString__map = v9;

  v11 = *MEMORY[0x1E69E9840];
}

+ (unsigned)_typeFromString:(id)string
{
  v3 = _typeFromString__once;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&_typeFromString__once, &__block_literal_global_159);
  }

  v5 = [_typeFromString__map objectForKeyedSubscript:stringCopy];

  unsignedIntValue = [v5 unsignedIntValue];
  return unsignedIntValue;
}

void __36__PPQuickTypeQuery__typeFromString___block_invoke()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69ABE10];
  v5[0] = *MEMORY[0x1E69ABEB8];
  v5[1] = v0;
  v6[0] = &unk_1F1B45958;
  v6[1] = &unk_1F1B45970;
  v1 = *MEMORY[0x1E69ABEA0];
  v5[2] = *MEMORY[0x1E69ABE78];
  v5[3] = v1;
  v6[2] = &unk_1F1B45988;
  v6[3] = &unk_1F1B459A0;
  v5[4] = *MEMORY[0x1E69ABF30];
  v6[4] = &unk_1F1B459B8;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = _typeFromString__map;
  _typeFromString__map = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)quickTypeQueryFromLMTokens:(id)tokens localeIdentifier:(id)identifier recipients:(id)recipients bundleIdentifier:(id)bundleIdentifier
{
  v42[1] = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  v11 = *MEMORY[0x1E69ABEE8];
  bundleIdentifierCopy = bundleIdentifier;
  recipientsCopy = recipients;
  identifierCopy = identifier;
  v13 = [tokensCopy objectForKeyedSubscript:v11];
  v14 = MEMORY[0x1E69ABDD8];
  v15 = [tokensCopy objectForKeyedSubscript:*MEMORY[0x1E69ABDD8]];
  v16 = v15;
  if (v13)
  {
    v42[0] = v13;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    if (!v16)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = 0;
  if (v15)
  {
LABEL_3:
    v41 = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];

    v17 = v18;
  }

LABEL_4:
  v19 = [tokensCopy objectForKeyedSubscript:*MEMORY[0x1E69ABED0]];
  v35 = [PPQuickTypeQuery alloc];
  v36 = [tokensCopy objectForKeyedSubscript:*MEMORY[0x1E69ABF28]];
  v34 = [self _typeFromString:?];
  v20 = v13;
  if (!v13)
  {
    v20 = [tokensCopy objectForKeyedSubscript:*MEMORY[0x1E69ABF00]];
  }

  v40 = v16;
  v33 = [self _subtypeFromString:v20];
  v21 = [tokensCopy objectForKeyedSubscript:@"textContentTypeTag"];
  v31 = [self _semanticTagFromString:v21];
  v30 = [self _fieldsFromStrings:v17];
  v37 = v17;
  if (v13)
  {
    v29 = [self _timeFromString:v13];
    v22 = [self _subfieldsFromString:v13];
    v32 = v21;
    v21 = v22;
  }

  else
  {
    v29 = 0;
    v22 = 0;
    v32 = v20;
  }

  v23 = [tokensCopy objectForKeyedSubscript:*v14];
  v24 = [self _labelFromLMFieldString:v23 qualifiers:v19];
  v25 = [self _peopleNamesFromLMQualifiers:v19];
  v26 = [(PPQuickTypeQuery *)v35 initWithType:v34 subtype:v33 semanticTag:v31 fields:v30 time:v29 options:0 subFields:v22 label:v24 people:v25 localeIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy recipients:recipientsCopy timeoutSeconds:&unk_1F1B45928];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

@end