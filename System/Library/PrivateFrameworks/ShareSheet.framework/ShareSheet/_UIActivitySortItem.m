@interface _UIActivitySortItem
+ (id)sortDescriptorForActivity:(id)a3 withGroup:(int64_t)a4 secondarySortValue:(id)a5;
+ (id)sortDescriptorForActivity:(id)a3 withGroup:(int64_t)a4 secondarySortValue:(id)a5 tertiarySortValue:(id)a6;
- (id)debugDescription;
- (int64_t)compare:(id)a3;
@end

@implementation _UIActivitySortItem

+ (id)sortDescriptorForActivity:(id)a3 withGroup:(int64_t)a4 secondarySortValue:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_new();
  v10 = v9[1];
  v9[1] = v7;
  v11 = v7;

  v12 = v9[3];
  v9[2] = a4;
  v9[3] = v8;

  return v9;
}

+ (id)sortDescriptorForActivity:(id)a3 withGroup:(int64_t)a4 secondarySortValue:(id)a5 tertiarySortValue:(id)a6
{
  v9 = a6;
  v10 = [_UIActivitySortItem sortDescriptorForActivity:a3 withGroup:a4 secondarySortValue:a5];
  v11 = v10[4];
  v10[4] = v9;

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  activity = self->_activity;
  v7 = [(UIActivity *)activity activityType];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_group];
  v9 = [v3 stringWithFormat:@"<%@: %p> activity = <%@: %p> '%@', group = %@, secondarySortValue = %@, tertiarySortValue = %@", v4, self, v5, activity, v7, v8, self->_secondarySortValue, self->_tertiarySortValue];

  return v9;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = v4;
  group = self->_group;
  v7 = v4[2];
  v8 = group <= v7;
  if (group >= v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v4[3];
    v12 = self->_secondarySortValue;
    v13 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v14 = [v12 localizedCaseInsensitiveCompare:v13];
    }

    else
    {
      v14 = [v12 compare:v13];
    }

    v10 = v14;

    if (!v10)
    {
      if ((tertiarySortValue = self->_tertiarySortValue) == 0 || (v16 = v5[4]) == 0 || ((v17 = tertiarySortValue, v18 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v19 = [v17 compare:v18]) : (v19 = objc_msgSend(v17, "localizedCaseInsensitiveCompare:", v18)), v10 = v19, v18, v17, !v10))
      {
        v20 = [(UIActivity *)self->_activity activityTitle];
        v21 = [v5[1] activityTitle];
        v22 = v20;
        v23 = v21;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v24 = [v22 localizedCaseInsensitiveCompare:v23];
        }

        else
        {
          v24 = [v22 compare:v23];
        }

        v10 = v24;

        if (!v10)
        {
          v25 = [(UIActivity *)self->_activity activityUUID];
          v26 = [v25 UUIDString];
          v27 = [v5[1] activityUUID];
          v28 = [v27 UUIDString];
          v10 = [v26 compare:v28];
        }
      }
    }
  }

  return v10;
}

@end