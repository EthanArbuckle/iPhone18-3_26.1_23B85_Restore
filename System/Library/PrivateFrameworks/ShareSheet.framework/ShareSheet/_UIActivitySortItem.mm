@interface _UIActivitySortItem
+ (id)sortDescriptorForActivity:(id)activity withGroup:(int64_t)group secondarySortValue:(id)value;
+ (id)sortDescriptorForActivity:(id)activity withGroup:(int64_t)group secondarySortValue:(id)value tertiarySortValue:(id)sortValue;
- (id)debugDescription;
- (int64_t)compare:(id)compare;
@end

@implementation _UIActivitySortItem

+ (id)sortDescriptorForActivity:(id)activity withGroup:(int64_t)group secondarySortValue:(id)value
{
  activityCopy = activity;
  valueCopy = value;
  v9 = objc_opt_new();
  v10 = v9[1];
  v9[1] = activityCopy;
  v11 = activityCopy;

  v12 = v9[3];
  v9[2] = group;
  v9[3] = valueCopy;

  return v9;
}

+ (id)sortDescriptorForActivity:(id)activity withGroup:(int64_t)group secondarySortValue:(id)value tertiarySortValue:(id)sortValue
{
  sortValueCopy = sortValue;
  v10 = [_UIActivitySortItem sortDescriptorForActivity:activity withGroup:group secondarySortValue:value];
  v11 = v10[4];
  v10[4] = sortValueCopy;

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  activity = self->_activity;
  activityType = [(UIActivity *)activity activityType];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_group];
  v9 = [v3 stringWithFormat:@"<%@: %p> activity = <%@: %p> '%@', group = %@, secondarySortValue = %@, tertiarySortValue = %@", v4, self, v5, activity, activityType, v8, self->_secondarySortValue, self->_tertiarySortValue];

  return v9;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = compareCopy;
  group = self->_group;
  v7 = compareCopy[2];
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
    v11 = compareCopy[3];
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
        activityTitle = [(UIActivity *)self->_activity activityTitle];
        activityTitle2 = [v5[1] activityTitle];
        v22 = activityTitle;
        v23 = activityTitle2;
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
          activityUUID = [(UIActivity *)self->_activity activityUUID];
          uUIDString = [activityUUID UUIDString];
          activityUUID2 = [v5[1] activityUUID];
          uUIDString2 = [activityUUID2 UUIDString];
          v10 = [uUIDString compare:uUIDString2];
        }
      }
    }
  }

  return v10;
}

@end