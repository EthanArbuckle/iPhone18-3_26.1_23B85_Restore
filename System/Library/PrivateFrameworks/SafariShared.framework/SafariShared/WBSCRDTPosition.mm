@interface WBSCRDTPosition
+ (id)positionBetweenPosition:(id)position andPosition:(id)andPosition withDeviceIdentifier:(id)identifier changeID:(int64_t)d;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (WBSCRDTPosition)initWithCoder:(id)coder;
- (WBSCRDTPosition)initWithDictionaryRepresentation:(id)representation;
- (WBSCRDTPosition)initWithSortValue:(id)value parentSortValues:(id)values;
- (WBSCRDTPosition)initWithSortValues:(id)values;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation WBSCRDTPosition

+ (id)positionBetweenPosition:(id)position andPosition:(id)andPosition withDeviceIdentifier:(id)identifier changeID:(int64_t)d
{
  v59[1] = *MEMORY[0x1E69E9840];
  positionCopy = position;
  andPositionCopy = andPosition;
  identifierCopy = identifier;
  v13 = [[WBSCRDTPositionSortValue alloc] initWithSortValue:0 deviceIdentifier:identifierCopy changeID:d];
  v14 = v13;
  if (!(positionCopy | andPositionCopy))
  {
    v27 = [self alloc];
    v59[0] = v14;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
    v26 = [v27 initWithSortValues:v28];

    goto LABEL_32;
  }

  if (!andPositionCopy)
  {
    v29 = [self alloc];
    sortValues = [positionCopy sortValues];
    firstObject = [sortValues firstObject];
    v32 = -[WBSCRDTPositionSortValue positionSortValueWithSortValue:](v14, "positionSortValueWithSortValue:", [firstObject sortValue] + 1000);
    v58 = v32;
    v33 = MEMORY[0x1E695DEC8];
    v34 = &v58;
LABEL_17:
    v35 = [v33 arrayWithObjects:v34 count:1];
    v26 = [v29 initWithSortValues:v35];

    goto LABEL_32;
  }

  if (!positionCopy)
  {
    v29 = [self alloc];
    sortValues = [andPositionCopy sortValues];
    firstObject = [sortValues firstObject];
    v32 = -[WBSCRDTPositionSortValue positionSortValueWithSortValue:](v14, "positionSortValueWithSortValue:", [firstObject sortValue] - 1000);
    v57 = v32;
    v33 = MEMORY[0x1E695DEC8];
    v34 = &v57;
    goto LABEL_17;
  }

  v55 = positionCopy;
  v56 = v13;
  v53 = identifierCopy;
  sortValues2 = [positionCopy sortValues];
  v54 = andPositionCopy;
  sortValues3 = [andPositionCopy sortValues];
  v17 = [sortValues2 count];
  v18 = [sortValues3 count];
  v52 = v18;
  if (v17 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (!v19)
  {
LABEL_12:
    if (v17 == v52)
    {
      v25 = [self alloc];
      v14 = v56;
      v21 = [(WBSCRDTPositionSortValue *)v56 positionSortValueWithSortValue:0];
      v26 = [v25 initWithSortValue:v21 parentSortValues:sortValues2];
      identifierCopy = v53;
    }

    else
    {
      v36 = [self alloc];
      identifierCopy = v53;
      v14 = v56;
      if (v17 <= v52)
      {
        v21 = [sortValues3 objectAtIndexedSubscript:v17];
        v37 = -[WBSCRDTPositionSortValue positionSortValueWithSortValue:](v56, "positionSortValueWithSortValue:", [v21 sortValue] - 1000);
        v38 = sortValues3;
        v39 = v17;
      }

      else
      {
        v21 = [sortValues2 objectAtIndexedSubscript:v52];
        v37 = -[WBSCRDTPositionSortValue positionSortValueWithSortValue:](v56, "positionSortValueWithSortValue:", [v21 sortValue] + 1000);
        v38 = sortValues2;
        v39 = v52;
      }

      v44 = [v38 subarrayWithRange:{0, v39}];
      v26 = [v36 initWithSortValue:v37 parentSortValues:v44];
    }

    goto LABEL_31;
  }

  v20 = 0;
  while (1)
  {
    v21 = [sortValues2 objectAtIndexedSubscript:v20];
    v22 = [sortValues3 objectAtIndexedSubscript:v20];
    if (([v21 isEqualToPositionSortValue:v22] & 1) == 0)
    {
      sortValue = [v21 sortValue];
      sortValue2 = [v22 sortValue];
      if (sortValue2 != sortValue)
      {
        break;
      }
    }

    if (v19 == ++v20)
    {
      goto LABEL_12;
    }
  }

  if (sortValue2 - sortValue < 2)
  {
    v45 = v20 + 1;
    if (v17 > v45)
    {
      v46 = [self alloc];
      v42 = [sortValues2 objectAtIndexedSubscript:v45];
      v47 = -[WBSCRDTPositionSortValue positionSortValueWithSortValue:](v56, "positionSortValueWithSortValue:", [v42 sortValue] + 1000);
      v48 = [sortValues2 subarrayWithRange:{0, v45}];
      v26 = [v46 initWithSortValue:v47 parentSortValues:v48];

      goto LABEL_30;
    }

    v49 = [self alloc];
    if (v52 <= v45)
    {
      v42 = [sortValues2 subarrayWithRange:{0, v45}];
      v26 = [v49 initWithSortValue:v56 parentSortValues:v42];
      goto LABEL_30;
    }

    v42 = [sortValues3 objectAtIndexedSubscript:v45];
    v43 = -[WBSCRDTPositionSortValue positionSortValueWithSortValue:](v56, "positionSortValueWithSortValue:", [v42 sortValue] - 1000);
    v50 = [sortValues3 subarrayWithRange:{0, v45}];
    v26 = [v49 initWithSortValue:v43 parentSortValues:v50];
  }

  else
  {
    v40 = sortValue2;
    v41 = [self alloc];
    v42 = [(WBSCRDTPositionSortValue *)v56 positionSortValueWithSortValue:(v40 + sortValue) / 2];
    v43 = [sortValues2 subarrayWithRange:{0, v20}];
    v26 = [v41 initWithSortValue:v42 parentSortValues:v43];
  }

LABEL_30:
  identifierCopy = v53;
  v14 = v56;
LABEL_31:

  andPositionCopy = v54;
  positionCopy = v55;
LABEL_32:

  return v26;
}

- (WBSCRDTPosition)initWithSortValues:(id)values
{
  valuesCopy = values;
  v10.receiver = self;
  v10.super_class = WBSCRDTPosition;
  v5 = [(WBSCRDTPosition *)&v10 init];
  if (v5)
  {
    v6 = [valuesCopy copy];
    sortValues = v5->_sortValues;
    v5->_sortValues = v6;

    v8 = v5;
  }

  return v5;
}

- (WBSCRDTPosition)initWithSortValue:(id)value parentSortValues:(id)values
{
  valuesCopy = values;
  if (valuesCopy)
  {
    v7 = valuesCopy;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [v7 arrayByAddingObject:value];
  v9 = [(WBSCRDTPosition *)self initWithSortValues:v8];

  return v9;
}

- (WBSCRDTPosition)initWithDictionaryRepresentation:(id)representation
{
  v22 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [representationCopy safari_arrayForKey:{@"sortValues", 0}];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (v12 = [[WBSCRDTPositionSortValue alloc] initWithDictionaryRepresentation:v11]) == 0)
        {

          v15 = 0;
          goto LABEL_15;
        }

        v13 = v12;
        [array addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if ([array count])
  {
    self = [(WBSCRDTPosition *)self initWithSortValues:array];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v15 = selfCopy;
LABEL_15:

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"sortValues";
  v2 = [(NSArray *)self->_sortValues valueForKey:@"dictionaryRepresentation"];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (unint64_t)hash
{
  lastObject = [(NSArray *)self->_sortValues lastObject];
  v3 = [lastObject hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSArray *)self->_sortValues isEqualToArray:equalCopy->_sortValues];
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (self == compareCopy)
  {
    v12 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_sortValues count];
    v6 = [(NSArray *)compareCopy->_sortValues count];
    v7 = v6;
    if (v5 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    if (v8)
    {
      v9 = 0;
      while (1)
      {
        v10 = [(NSArray *)self->_sortValues objectAtIndexedSubscript:v9];
        v11 = [(NSArray *)compareCopy->_sortValues objectAtIndexedSubscript:v9];
        v12 = [v10 compare:v11];

        if (v12)
        {
          break;
        }

        if (v8 == ++v9)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (v5 >= v7)
      {
        v12 = v5 > v7;
      }

      else
      {
        v12 = -1;
      }
    }
  }

  return v12;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NSArray *)self->_sortValues valueForKey:@"description"];
  v4 = [v3 componentsJoinedByString:{@", "}];
  v5 = [v2 stringWithFormat:@"[ %@ ]", v4];

  return v5;
}

- (WBSCRDTPosition)initWithCoder:(id)coder
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"sortValues"];

  if ([v8 count])
  {
    self = [(WBSCRDTPosition *)self initWithSortValues:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end