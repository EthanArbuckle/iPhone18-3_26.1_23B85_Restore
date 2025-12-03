@interface RBSystemState
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation RBSystemState

- (id)_init
{
  v3.receiver = self;
  v3.super_class = RBSystemState;
  return [(RBSystemState *)&v3 init];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(RBSystemState *)[RBMutableSystemState allocWithZone:?]];
  v4[17] = self->_preventIdleSleep;
  v4[16] = self->_preventLaunch;
  v5 = [(NSMutableSet *)self->_preventIdleSleepIdentifiers mutableCopy];
  v6 = *(v4 + 3);
  *(v4 + 3) = v5;

  v7 = [(NSMutableSet *)self->_tags mutableCopy];
  v8 = *(v4 + 1);
  *(v4 + 1) = v7;

  v9 = [(NSMutableSet *)self->_preventLaunchPredicates mutableCopy];
  v10 = *(v4 + 4);
  *(v4 + 4) = v9;

  v11 = [(NSMutableSet *)self->_allowLaunchPredicates mutableCopy];
  v12 = *(v4 + 5);
  *(v4 + 5) = v11;

  v13 = [(NSMutableDictionary *)self->_conditions mutableCopy];
  v14 = *(v4 + 6);
  *(v4 + 6) = v13;

  v15 = [(NSMutableDictionary *)self->_prewarmConfiguration mutableCopy];
  v16 = *(v4 + 7);
  *(v4 + 7) = v15;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = v6;
        if (self->_preventIdleSleep != v6->_preventIdleSleep || self->_preventLaunch != v6->_preventLaunch)
        {
          goto LABEL_37;
        }

        preventIdleSleepIdentifiers = self->_preventIdleSleepIdentifiers;
        v9 = v6->_preventIdleSleepIdentifiers;
        if (preventIdleSleepIdentifiers != v9)
        {
          v10 = 0;
          if (!preventIdleSleepIdentifiers || !v9)
          {
            goto LABEL_38;
          }

          Count = CFSetGetCount(self->_preventIdleSleepIdentifiers);
          if (Count != CFSetGetCount(v9) || ![(NSMutableSet *)preventIdleSleepIdentifiers isEqualToSet:v9])
          {
            goto LABEL_37;
          }
        }

        preventLaunchPredicates = self->_preventLaunchPredicates;
        v13 = v7->_preventLaunchPredicates;
        if (preventLaunchPredicates != v13)
        {
          v10 = 0;
          if (!preventLaunchPredicates || !v13)
          {
            goto LABEL_38;
          }

          v14 = CFSetGetCount(self->_preventLaunchPredicates);
          if (v14 != CFSetGetCount(v13) || ![(NSMutableSet *)preventLaunchPredicates isEqualToSet:v13])
          {
            goto LABEL_37;
          }
        }

        allowLaunchPredicates = self->_allowLaunchPredicates;
        v16 = v7->_allowLaunchPredicates;
        if (allowLaunchPredicates != v16)
        {
          v10 = 0;
          if (!allowLaunchPredicates || !v16)
          {
            goto LABEL_38;
          }

          v17 = CFSetGetCount(self->_allowLaunchPredicates);
          if (v17 != CFSetGetCount(v16) || ![(NSMutableSet *)allowLaunchPredicates isEqualToSet:v16])
          {
            goto LABEL_37;
          }
        }

        tags = self->_tags;
        v19 = v7->_tags;
        if (tags != v19)
        {
          v10 = 0;
          if (!tags || !v19)
          {
            goto LABEL_38;
          }

          v20 = CFSetGetCount(self->_tags);
          if (v20 != CFSetGetCount(v19) || ![(NSMutableSet *)tags isEqualToSet:v19])
          {
            goto LABEL_37;
          }
        }

        conditions = self->_conditions;
        v22 = v7->_conditions;
        if (conditions != v22)
        {
          v10 = 0;
          if (!conditions || !v22)
          {
            goto LABEL_38;
          }

          if (![(NSMutableDictionary *)conditions isEqual:?])
          {
            goto LABEL_37;
          }
        }

        prewarmConfiguration = self->_prewarmConfiguration;
        v24 = v7->_prewarmConfiguration;
        if (prewarmConfiguration == v24)
        {
          v10 = 1;
          goto LABEL_38;
        }

        v10 = 0;
        if (!prewarmConfiguration || !v24)
        {
          goto LABEL_38;
        }

        v25 = CFDictionaryGetCount(prewarmConfiguration);
        if (v25 == CFDictionaryGetCount(v24))
        {
          v10 = [(NSMutableDictionary *)prewarmConfiguration isEqualToDictionary:v24];
        }

        else
        {
LABEL_37:
          v10 = 0;
        }

LABEL_38:

        goto LABEL_39;
      }
    }

    v10 = 0;
  }

LABEL_39:

  return v10;
}

- (unint64_t)hash
{
  v3 = 0xBF58476D1CE4E5B9 * ((self->_preventIdleSleep << 24) | (self->_preventLaunch << 16));
  v4 = 0x94D049BB133111EBLL * (v3 ^ (v3 >> 27));
  v5 = [(NSMutableSet *)self->_preventIdleSleepIdentifiers hash];
  v6 = [(NSMutableSet *)self->_tags hash];
  v7 = [(NSMutableSet *)self->_preventLaunchPredicates hash];
  v8 = [(NSMutableSet *)self->_allowLaunchPredicates hash];
  v9 = [(NSMutableDictionary *)self->_conditions hash];
  return v6 ^ v5 ^ v7 ^ (v4 >> 31) ^ v8 ^ v9 ^ [(NSMutableDictionary *)self->_prewarmConfiguration hash]^ v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  v6 = &stru_287507640;
  if (self->_preventLaunch)
  {
    v7 = @" preventLaunch";
  }

  else
  {
    v7 = &stru_287507640;
  }

  if (self->_preventIdleSleep)
  {
    v6 = @" preventIdleSleep";
  }

  v8 = [v3 initWithFormat:@"<%@| %@%@>", v4, v7, v6];

  return v8;
}

@end