@interface ipp_t
- (BOOL)isEqual:(id)equal;
- (id)_findAttribute0:(id)attribute0 valueTag:(int)tag;
- (id)_initWithAttrs:(id)attrs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (id)debugDescription;
- (id)description;
- (id)userCodableDictionary;
- (ipp_t)init;
- (ipp_t)initWithCoder:(id)coder;
- (ipp_t)initWithData:(id)data;
- (unint64_t)hash;
- (void)_addAttrToAppropriateGroup:(id)group;
- (void)_deleteAttribute:(id)attribute;
- (void)_withGroupingBehavior:(id)behavior;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAttributes:(id)attributes;
@end

@implementation ipp_t

- (ipp_t)init
{
  v6.receiver = self;
  v6.super_class = ipp_t;
  v2 = [(ipp_t *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    attrs = v2->_attrs;
    v2->_attrs = v3;
  }

  return v2;
}

- (id)_initWithAttrs:(id)attrs
{
  attrsCopy = attrs;
  v5 = [(ipp_t *)self init];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = attrsCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          attrs = v5->_attrs;
          v11 = [*(*(&v13 + 1) + 8 * v9) copy];
          [(NSMutableArray *)attrs addObject:v11];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (void)_addAttrToAppropriateGroup:(id)group
{
  groupCopy = group;
  v4 = [(NSMutableArray *)self->_attrs count];
  group_tag = [groupCopy group_tag];
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = group_tag;
  v7 = 0;
  v8 = -1;
  while (1)
  {
    v9 = [(NSMutableArray *)self->_attrs objectAtIndexedSubscript:v7];
    if ([v9 group_tag] != v6)
    {
      break;
    }

    v8 = ++v7;
LABEL_7:

    if (v7 == v4)
    {
      goto LABEL_10;
    }
  }

  if (v8 == -1)
  {
    ++v7;
    goto LABEL_7;
  }

LABEL_10:
  if (v8 != -1 && v8 < v4)
  {
    [(NSMutableArray *)self->_attrs insertObject:groupCopy atIndex:v8];
    goto LABEL_14;
  }

LABEL_13:
  [(NSMutableArray *)self->_attrs addObject:groupCopy];
LABEL_14:
}

- (void)_withGroupingBehavior:(id)behavior
{
  behaviorCopy = behavior;
  addAttributesInAppropriateGroups = self->_addAttributesInAppropriateGroups;
  self->_addAttributesInAppropriateGroups = 1;
  v6 = behaviorCopy;
  (*(behaviorCopy + 2))(behaviorCopy, self);
  self->_addAttributesInAppropriateGroups = addAttributesInAppropriateGroups;
}

- (ipp_t)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dataRepresentation"];
  v6 = [(ipp_t *)self initWithData:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataRepresentation = [(ipp_t *)self dataRepresentation];
  [coderCopy encodeObject:dataRepresentation forKey:@"_dataRepresentation"];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = ipp_t;
  v3 = [(ipp_t *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ { %d attrs @ %p }", v3, [(NSMutableArray *)self->_attrs count], self->_attrs];

  return v4;
}

- (id)debugDescription
{
  userCodableDictionary = [(ipp_t *)self userCodableDictionary];
  allKeys = [userCodableDictionary allKeys];
  firstObject = [allKeys firstObject];

  v5 = [userCodableDictionary objectForKeyedSubscript:firstObject];
  v6 = [NSString stringWithFormat:@"%@ { %@ }", firstObject, v5];

  return v6;
}

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  attrs = self->_attrs;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003B2AC;
  v12[3] = &unk_1000A2CD0;
  v5 = v3;
  v13 = v5;
  [(NSMutableArray *)attrs enumerateObjectsUsingBlock:v12];
  v11.receiver = self;
  v11.super_class = ipp_t;
  v6 = [(ipp_t *)&v11 description];
  _descriptionLeader = [(ipp_t *)self _descriptionLeader];
  v8 = [NSString stringWithFormat:@"%@ %@", v6, _descriptionLeader];

  v14 = v8;
  v15 = v5;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  return v9;
}

- (void)enumerateAttributes:(id)attributes
{
  attributesCopy = attributes;
  attrs = self->_attrs;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003B3C8;
  v7[3] = &unk_1000A2CF8;
  v8 = attributesCopy;
  v6 = attributesCopy;
  [(NSMutableArray *)attrs enumerateObjectsUsingBlock:v7];
}

- (ipp_t)initWithData:(id)data
{
  dataCopy = data;
  v5 = [(ipp_t *)self init];
  if (v5)
  {
    v17 = 0;
    v6 = dataCopy;
    v18 = v6;
    [(ipp_t *)v5 setState:0];
    v7 = objc_autoreleasePoolPush();
    do
    {
      IO = ippReadIO(&v17, sub_10003B6E0, v5);
      v9 = IO;
    }

    while (IO != -1 && IO != 3);
    objc_autoreleasePoolPop(v7);
    if (v9 == 3)
    {
      v11 = [v6 length];
      if (v11 - v17 < 1)
      {
LABEL_15:

        goto LABEL_16;
      }

      v12 = [v6 subdataWithRange:?];
      dataRemaining = v5->_dataRemaining;
      v5->_dataRemaining = v12;
    }

    else
    {
      v14 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Couldn't convert data to ipp", v16, 2u);
      }

      dataRemaining = v5;
      v5 = 0;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

- (id)dataRepresentation
{
  [(ipp_t *)self setState:0];
  v3 = [NSMutableData dataWithCapacity:0];
  v4 = objc_autoreleasePoolPush();
  ippWriteIO(v3, sub_10003B7E0, self);
  objc_autoreleasePoolPop(v4);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  dataRepresentation = [(ipp_t *)self dataRepresentation];
  dataRepresentation2 = [equalCopy dataRepresentation];
  v7 = [dataRepresentation isEqual:dataRepresentation2];

  return v7;
}

- (unint64_t)hash
{
  dataRepresentation = [(ipp_t *)self dataRepresentation];
  v3 = [dataRepresentation hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  dataRepresentation = [(ipp_t *)self dataRepresentation];
  v4 = [objc_alloc(objc_opt_class()) initWithData:dataRepresentation];

  return v4;
}

- (void)_deleteAttribute:(id)attribute
{
  attributeCopy = attribute;
  v4 = [(NSMutableArray *)self->_attrs indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_attrs removeObjectAtIndex:v4];
  }
}

- (id)_findAttribute0:(id)attribute0 valueTag:(int)tag
{
  attribute0Copy = attribute0;
  v7 = attribute0Copy;
  if (attribute0Copy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_10003D134;
    v19 = sub_10003D144;
    v20 = 0;
    [attribute0Copy lowercaseString];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003D14C;
    v12 = v11[3] = &unk_1000A2F98;
    v13 = &v15;
    tagCopy = tag;
    v8 = v12;
    [(ipp_t *)self enumerateAttributes:v11];
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end