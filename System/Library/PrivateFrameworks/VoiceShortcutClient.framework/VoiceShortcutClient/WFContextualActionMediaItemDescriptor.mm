@interface WFContextualActionMediaItemDescriptor
- (BOOL)isEqual:(id)equal;
- (WFContextualActionMediaItemDescriptor)initWithCoder:(id)coder;
- (WFContextualActionMediaItemDescriptor)initWithPlaybackStoreId:(id)id name:(id)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContextualActionMediaItemDescriptor

- (void)encodeWithCoder:(id)coder
{
  playbackStoreId = self->_playbackStoreId;
  coderCopy = coder;
  [coderCopy encodeObject:playbackStoreId forKey:@"playbackStoreId"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
}

- (WFContextualActionMediaItemDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playbackStoreId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(WFContextualActionMediaItemDescriptor *)self initWithPlaybackStoreId:v5 name:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    playbackStoreId = [(WFContextualActionMediaItemDescriptor *)v6 playbackStoreId];
    playbackStoreId2 = [(WFContextualActionMediaItemDescriptor *)self playbackStoreId];
    v9 = playbackStoreId;
    v10 = playbackStoreId2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    name = [(WFContextualActionMediaItemDescriptor *)v6 name];
    name2 = [(WFContextualActionMediaItemDescriptor *)self name];
    v14 = name;
    v17 = name2;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqualToString:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  playbackStoreId = [(WFContextualActionMediaItemDescriptor *)self playbackStoreId];
  v5 = [v3 combineContentsOfPropertyListObject:playbackStoreId];

  name = [(WFContextualActionMediaItemDescriptor *)self name];
  v7 = [v3 combineContentsOfPropertyListObject:name];

  v8 = [v3 finalize];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(WFContextualActionMediaItemDescriptor *)self name];
  playbackStoreId = [(WFContextualActionMediaItemDescriptor *)self playbackStoreId];
  v8 = [v3 stringWithFormat:@"<%@ %p> Name: %@, Playback Store ID: %@", v5, self, name, playbackStoreId];

  return v8;
}

- (WFContextualActionMediaItemDescriptor)initWithPlaybackStoreId:(id)id name:(id)name
{
  idCopy = id;
  nameCopy = name;
  v10 = nameCopy;
  if (idCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionMediaItemDescriptor.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"playbackStoreId"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFContextualActionMediaItemDescriptor.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = WFContextualActionMediaItemDescriptor;
  v11 = [(WFContextualActionMediaItemDescriptor *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_playbackStoreId, id);
    v13 = [v10 copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = v12;
  }

  return v12;
}

@end