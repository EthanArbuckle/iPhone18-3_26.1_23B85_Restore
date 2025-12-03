@interface VUIAppDocumentRemovePlayHistoryEvent
- (BOOL)isEqual:(id)equal;
- (VUIAppDocumentRemovePlayHistoryEvent)initWithDescriptor:(id)descriptor;
- (VUIAppDocumentRemovePlayHistoryEvent)initWithRemovedCanonicalIDs:(id)ds;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation VUIAppDocumentRemovePlayHistoryEvent

- (VUIAppDocumentRemovePlayHistoryEvent)initWithDescriptor:(id)descriptor
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentRemovePlayHistoryEvent)initWithRemovedCanonicalIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = +[VUIAppDocumentUpdateEventDescriptor removeFromPlayHistory];
    v11.receiver = self;
    v11.super_class = VUIAppDocumentRemovePlayHistoryEvent;
    v6 = [(VUIAppDocumentUpdateEvent *)&v11 initWithDescriptor:v5];

    if (v6)
    {
      v7 = [dsCopy copy];
      removedCanonicalIDs = v6->_removedCanonicalIDs;
      v6->_removedCanonicalIDs = v7;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v9.receiver = self;
  v9.super_class = VUIAppDocumentRemovePlayHistoryEvent;
  dictionaryRepresentation = [(VUIAppDocumentUpdateEvent *)&v9 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  removedCanonicalIDs = [(VUIAppDocumentRemovePlayHistoryEvent *)self removedCanonicalIDs];
  if ([removedCanonicalIDs count])
  {
    allObjects = [removedCanonicalIDs allObjects];
    [v4 setObject:allObjects forKey:@"removed"];
  }

  v7 = [v4 copy];

  return v7;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VUIAppDocumentRemovePlayHistoryEvent;
  v3 = [(VUIAppDocumentUpdateEvent *)&v7 hash];
  removedCanonicalIDs = [(VUIAppDocumentRemovePlayHistoryEvent *)self removedCanonicalIDs];
  v5 = [removedCanonicalIDs hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v14.receiver = self;
    v14.super_class = VUIAppDocumentRemovePlayHistoryEvent;
    if ([(VUIAppDocumentUpdateEvent *)&v14 isEqual:v6])
    {
      removedCanonicalIDs = [(VUIAppDocumentRemovePlayHistoryEvent *)self removedCanonicalIDs];
      removedCanonicalIDs2 = [(VUIAppDocumentRemovePlayHistoryEvent *)v6 removedCanonicalIDs];
      v9 = removedCanonicalIDs;
      v10 = removedCanonicalIDs2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12.receiver = self;
  v12.super_class = VUIAppDocumentRemovePlayHistoryEvent;
  v4 = [(VUIAppDocumentUpdateEvent *)&v12 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  removedCanonicalIDs = [(VUIAppDocumentRemovePlayHistoryEvent *)self removedCanonicalIDs];
  v7 = [v5 stringWithFormat:@"%@=%@", @"removedCanonicalIDs", removedCanonicalIDs];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end