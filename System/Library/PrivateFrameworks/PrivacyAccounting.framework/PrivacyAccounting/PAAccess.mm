@interface PAAccess
+ (NSArray)allAccessClasses;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BOOL)isEqualToAccess:(id)access withOptions:(unint64_t)options;
- (BOOL)supportsSameMinuteAccessCountLogging;
- (NSString)description;
- (NSString)descriptionForCategory;
- (PAAccess)initWithAccessor:(id)accessor assetIdentifiers:(id)identifiers;
- (PAAccess)initWithAccessor:(id)accessor identifier:(id)identifier kind:(int64_t)kind assetIdentifiers:(id)identifiers visibilityState:(int64_t)state accessEventCount:(unint64_t)count accessCount:(unint64_t)accessCount;
- (PAAccess)initWithCoder:(id)coder;
- (PAAccess)initWithProto:(id)proto;
- (PAAccess)initWithProtoData:(id)data;
- (id)JSONObject;
- (id)asIntervalBeginEvent;
- (id)asIntervalEndEventWithTimestampAdjustment:(double)adjustment;
- (id)asIntervalEventWithAssetIdentifiers:(id)identifiers visibilityState:(int64_t)state accessEventCount:(unint64_t)count;
- (id)copyWithNewAccessor:(id)accessor;
- (id)copyWithNewAssetIdentifiers:(id)identifiers;
- (id)copyWithNewIdentifier:(id)identifier;
- (id)copyWithNewKind:(int64_t)kind;
- (id)copyWithNewTimestampAdjustment:(double)adjustment;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionForKind;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
- (unint64_t)hashWithOptions:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PAAccess

- (id)asIntervalBeginEvent
{
  v2 = [(PAAccess *)self copy];
  v2[4] = 2;
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = v2[5];
  v2[5] = v3;

  return v2;
}

- (id)JSONObject
{
  v12[6] = *MEMORY[0x1E69E9840];
  v12[0] = @"access";
  v11[0] = @"type";
  v11[1] = @"accessor";
  jSONObject = [(PAApplication *)self->_accessor JSONObject];
  v12[1] = jSONObject;
  v11[2] = @"category";
  descriptionForCategory = [(PAAccess *)self descriptionForCategory];
  v12[2] = descriptionForCategory;
  v11[3] = @"identifier";
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v12[3] = uUIDString;
  v11[4] = @"kind";
  descriptionForKind = [(PAAccess *)self descriptionForKind];
  v12[4] = descriptionForKind;
  v11[5] = @"accessCount";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PAAccess accessCount](self, "accessCount")}];
  v12[5] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)descriptionForKind
{
  v2 = self->_kind - 1;
  if (v2 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E86ABE78[v2];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  accessor = self->_accessor;
  identifier = self->_identifier;
  descriptionForKind = [(PAAccess *)self descriptionForKind];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestampAdjustment];
  v9 = [v3 stringWithFormat:@"<%@ %p> accessor:<%@> identifier:%@ kind:%@ timestampAdjustment:%@ visibilityState:%lu assetIdentifierCount:%lu accessCount:%lu", v4, self, accessor, identifier, descriptionForKind, v8, self->_visibilityState, -[NSSet count](self->_assetIdentifiers, "count"), self->_accessCount];

  return v9;
}

+ (NSArray)allAccessClasses
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (PAAccess)initWithAccessor:(id)accessor assetIdentifiers:(id)identifiers
{
  v6 = MEMORY[0x1E696AFB0];
  identifiersCopy = identifiers;
  accessorCopy = accessor;
  uUID = [v6 UUID];
  v10 = [(PAAccess *)self initWithAccessor:accessorCopy identifier:uUID kind:1 assetIdentifiers:identifiersCopy visibilityState:0 accessEventCount:0 accessCount:0];

  return v10;
}

- (PAAccess)initWithAccessor:(id)accessor identifier:(id)identifier kind:(int64_t)kind assetIdentifiers:(id)identifiers visibilityState:(int64_t)state accessEventCount:(unint64_t)count accessCount:(unint64_t)accessCount
{
  accessorCopy = accessor;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v26.receiver = self;
  v26.super_class = PAAccess;
  v19 = [(PAAccess *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_accessor, accessor);
    objc_storeStrong(&v20->_identifier, identifier);
    v20->_kind = kind;
    v20->_timestampAdjustment = 0.0;
    v20->_visibilityState = state;
    v21 = [identifiersCopy copy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [MEMORY[0x1E695DFD8] set];
    }

    assetIdentifiers = v20->_assetIdentifiers;
    v20->_assetIdentifiers = v23;

    v20->_accessCount = accessCount;
    v20->_eventCount = count;
  }

  return v20;
}

- (id)asIntervalEndEventWithTimestampAdjustment:(double)adjustment
{
  v4 = [(PAAccess *)self copy];
  *(v4 + 32) = 3;
  v5 = [MEMORY[0x1E695DFD8] set];
  v6 = *(v4 + 40);
  *(v4 + 40) = v5;

  *(v4 + 48) = adjustment;

  return v4;
}

- (id)asIntervalEventWithAssetIdentifiers:(id)identifiers visibilityState:(int64_t)state accessEventCount:(unint64_t)count
{
  identifiersCopy = identifiers;
  v9 = [(PAAccess *)self copy];
  v9[4] = 4;
  v10 = [identifiersCopy copy];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [MEMORY[0x1E695DFD8] set];
  }

  v12 = v9[5];
  v9[5] = v11;

  v9[1] = state;
  v9[8] = count;

  return v9;
}

- (id)copyWithNewIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(PAAccess *)self copy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 24), identifier);
  }

  return v7;
}

- (id)copyWithNewKind:(int64_t)kind
{
  result = [(PAAccess *)self copy];
  if (result)
  {
    *(result + 4) = kind;
  }

  return result;
}

- (id)copyWithNewAssetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(PAAccess *)self copy];
  if (v5)
  {
    v6 = [identifiersCopy copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFD8] set];
    }

    v9 = v5[5];
    v5[5] = v8;
  }

  return v5;
}

- (BOOL)supportsSameMinuteAccessCountLogging
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  category = [(PAAccess *)self category];
  v4 = [category isEqual:@"contacts"];

  return v4;
}

- (NSString)descriptionForCategory
{
  category = [(PAAccess *)self category];
  v3 = category;
  if (category)
  {
    v4 = category;
  }

  else
  {
    v4 = @"unknown";
  }

  v5 = v4;

  return &v4->isa;
}

- (unint64_t)hashWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v5 = [(PAApplication *)self->_accessor hash];
  if (optionsCopy)
  {
    if ((optionsCopy & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = [(NSUUID *)self->_identifier hash]- v5 + 32 * v5;
    if ((optionsCopy & 2) != 0)
    {
LABEL_3:
      if ((optionsCopy & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v5 = self->_kind - v5 + 32 * v5;
  if ((optionsCopy & 4) != 0)
  {
LABEL_4:
    if ((optionsCopy & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v5 = [(NSSet *)self->_assetIdentifiers hash]- v5 + 32 * v5;
    if ((optionsCopy & 0x10) != 0)
    {
      return v5;
    }

    return self->_visibilityState - v5 + 32 * v5;
  }

LABEL_10:
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestampAdjustment];
  v5 = [v7 hash] - v5 + 32 * v5;

  if ((optionsCopy & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((optionsCopy & 0x10) == 0)
  {
    return self->_visibilityState - v5 + 32 * v5;
  }

  return v5;
}

- (BOOL)isEqualToAccess:(id)access withOptions:(unint64_t)options
{
  optionsCopy = options;
  accessCopy = access;
  if (accessCopy != self)
  {
    if (![(PAAccess *)accessCopy isMemberOfClass:objc_opt_class()])
    {
      goto LABEL_18;
    }

    accessor = self->_accessor;
    accessor = [(PAAccess *)accessCopy accessor];
    LODWORD(accessor) = [(PAApplication *)accessor isEqual:accessor];

    if (!accessor)
    {
      goto LABEL_18;
    }

    if ((optionsCopy & 1) == 0)
    {
      identifier = self->_identifier;
      identifier = [(PAAccess *)accessCopy identifier];
      LODWORD(identifier) = [(NSUUID *)identifier isEqual:identifier];

      if (!identifier)
      {
        goto LABEL_18;
      }
    }

    if ((optionsCopy & 2) == 0)
    {
      kind = self->_kind;
      if (kind != [(PAAccess *)accessCopy kind])
      {
        goto LABEL_18;
      }
    }

    if ((optionsCopy & 4) == 0)
    {
      timestampAdjustment = self->_timestampAdjustment;
      [(PAAccess *)accessCopy timestampAdjustment];
      if (timestampAdjustment != v13)
      {
        goto LABEL_18;
      }
    }

    if ((optionsCopy & 8) == 0)
    {
      assetIdentifiers = self->_assetIdentifiers;
      assetIdentifiers = [(PAAccess *)accessCopy assetIdentifiers];
      v16 = assetIdentifiers;
      if (assetIdentifiers == assetIdentifiers)
      {
      }

      else
      {
        v17 = self->_assetIdentifiers;
        assetIdentifiers2 = [(PAAccess *)accessCopy assetIdentifiers];
        LODWORD(v17) = [(NSSet *)v17 isEqual:assetIdentifiers2];

        if (!v17)
        {
LABEL_18:
          v20 = 0;
          goto LABEL_19;
        }
      }
    }

    if ((optionsCopy & 0x10) == 0)
    {
      visibilityState = self->_visibilityState;
      if (visibilityState != [(PAAccess *)accessCopy visibilityState])
      {
        goto LABEL_18;
      }
    }
  }

  v20 = 1;
LABEL_19:

  return v20;
}

- (id)copyWithNewAccessor:(id)accessor
{
  accessorCopy = accessor;
  accessor = self->_accessor;
  if (accessor == accessorCopy || [(PAApplication *)accessor isEqual:accessorCopy])
  {
    selfCopy = self;
  }

  else
  {
    v8 = [(PAAccess *)self copy];
    selfCopy = v8;
    if (v8)
    {
      objc_storeStrong((v8 + 16), accessor);
    }
  }

  return selfCopy;
}

- (id)copyWithNewTimestampAdjustment:(double)adjustment
{
  result = [(PAAccess *)self copy];
  if (result)
  {
    *(result + 6) = adjustment;
  }

  return result;
}

- (PAAccess)initWithCoder:(id)coder
{
  v4 = initWithCoder__once;
  coderCopy = coder;
  if (v4 != -1)
  {
    [PAAccess initWithCoder:];
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessor"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v8 = [coderCopy decodeIntegerForKey:@"kind"];
  v9 = [coderCopy decodeObjectOfClasses:initWithCoder__allowedIdentifierClasses forKey:@"assetIdentifiers"];
  v10 = [coderCopy decodeIntegerForKey:@"visibilityState"];
  v11 = [coderCopy decodeIntegerForKey:@"eventCount"];
  v12 = [coderCopy decodeIntegerForKey:@"accessCount"];

  v13 = [(PAAccess *)self initWithAccessor:v6 identifier:v7 kind:v8 assetIdentifiers:v9 visibilityState:v10 accessEventCount:v11 accessCount:v12];
  return v13;
}

void __26__PAAccess_initWithCoder___block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCoder__allowedIdentifierClasses;
  initWithCoder__allowedIdentifierClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)coder
{
  accessor = self->_accessor;
  coderCopy = coder;
  [coderCopy encodeObject:accessor forKey:@"accessor"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_kind forKey:@"kind"];
  [coderCopy encodeObject:self->_assetIdentifiers forKey:@"assetIdentifiers"];
  [coderCopy encodeInteger:self->_visibilityState forKey:@"visibilityState"];
  [coderCopy encodeInteger:self->_eventCount forKey:@"eventCount"];
  [coderCopy encodeInteger:self->_accessCount forKey:@"accessCount"];
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version >= 3)
  {
    dataCopy = data;
    v4 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jSONObject = [(PAAccess *)self JSONObject];
  v4 = [v2 dataWithJSONObject:jSONObject options:3 error:0];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PAApplication *)self->_accessor copyWithZone:zone];
  v7 = [(NSUUID *)self->_identifier copyWithZone:zone];
  v8 = [v5 initWithAccessor:v6 identifier:v7 kind:self->_kind assetIdentifiers:self->_assetIdentifiers visibilityState:self->_visibilityState accessEventCount:self->_eventCount accessCount:self->_accessCount];

  return v8;
}

- (id)encodeAsProto
{
  proto = [(PAAccess *)self proto];
  data = [proto data];

  return data;
}

- (PAAccess)initWithProto:(id)proto
{
  protoCopy = proto;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = protoCopy;
    v6 = [PAApplication alloc];
    accessor = [v5 accessor];
    v8 = [(PAApplication *)v6 initWithProto:accessor];

    if (v8 && ([v5 identifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10 == 16))
    {
      v11 = objc_alloc(MEMORY[0x1E696AFB0]);
      identifier = [v5 identifier];
      v13 = [v11 initWithUUIDBytes:{objc_msgSend(identifier, "bytes")}];

      if (v13 && (v14 = [v5 kind], v14 - 1 <= 3))
      {
        v15 = v14;
        assetIdentifiers = [v5 assetIdentifiers];
        v17 = MEMORY[0x1E695DFD8];
        if (assetIdentifiers)
        {
          assetIdentifiers2 = [v5 assetIdentifiers];
          v19 = [v17 setWithArray:assetIdentifiers2];
        }

        else
        {
          v19 = [MEMORY[0x1E695DFD8] set];
        }

        self = [(PAAccess *)self initWithAccessor:v8 identifier:v13 kind:v15 assetIdentifiers:v19 visibilityState:0 accessEventCount:0 accessCount:0];
        if (self)
        {
          [v5 timestampAdjustment];
          self->_timestampAdjustment = v21;
          self->_accessCount = [v5 accessCount];
        }

        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PAAccess)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[PAPBAccess alloc] initWithData:dataCopy];

    v6 = [(PAAccess *)self initWithProto:v5];
    self = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  proto = [(PAApplication *)self->_accessor proto];
  [v3 setAccessor:proto];

  v12[0] = 0;
  v12[1] = 0;
  [(NSUUID *)self->_identifier getUUIDBytes:v12];
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:16];
  [v3 setIdentifier:v5];

  v6 = 0;
  if ((self->_kind - 1) <= 3)
  {
    [v3 setKind:LODWORD(self->_kind)];
    if (self->_timestampAdjustment != 0.0)
    {
      [v3 setTimestampAdjustment:?];
    }

    if (self->_accessCount)
    {
      [v3 setAccessCount:?];
    }

    assetIdentifiers = [(PAAccess *)self assetIdentifiers];
    allObjects = [assetIdentifiers allObjects];
    v9 = [allObjects mutableCopy];
    [v3 setAssetIdentifiers:v9];

    v6 = v3;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

@end