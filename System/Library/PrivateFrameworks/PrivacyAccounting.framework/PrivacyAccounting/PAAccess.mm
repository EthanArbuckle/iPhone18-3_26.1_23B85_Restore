@interface PAAccess
+ (NSArray)allAccessClasses;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BOOL)isEqualToAccess:(id)a3 withOptions:(unint64_t)a4;
- (BOOL)supportsSameMinuteAccessCountLogging;
- (NSString)description;
- (NSString)descriptionForCategory;
- (PAAccess)initWithAccessor:(id)a3 assetIdentifiers:(id)a4;
- (PAAccess)initWithAccessor:(id)a3 identifier:(id)a4 kind:(int64_t)a5 assetIdentifiers:(id)a6 visibilityState:(int64_t)a7 accessEventCount:(unint64_t)a8 accessCount:(unint64_t)a9;
- (PAAccess)initWithCoder:(id)a3;
- (PAAccess)initWithProto:(id)a3;
- (PAAccess)initWithProtoData:(id)a3;
- (id)JSONObject;
- (id)asIntervalBeginEvent;
- (id)asIntervalEndEventWithTimestampAdjustment:(double)a3;
- (id)asIntervalEventWithAssetIdentifiers:(id)a3 visibilityState:(int64_t)a4 accessEventCount:(unint64_t)a5;
- (id)copyWithNewAccessor:(id)a3;
- (id)copyWithNewAssetIdentifiers:(id)a3;
- (id)copyWithNewIdentifier:(id)a3;
- (id)copyWithNewKind:(int64_t)a3;
- (id)copyWithNewTimestampAdjustment:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionForKind;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
- (unint64_t)hashWithOptions:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(PAApplication *)self->_accessor JSONObject];
  v12[1] = v3;
  v11[2] = @"category";
  v4 = [(PAAccess *)self descriptionForCategory];
  v12[2] = v4;
  v11[3] = @"identifier";
  v5 = [(NSUUID *)self->_identifier UUIDString];
  v12[3] = v5;
  v11[4] = @"kind";
  v6 = [(PAAccess *)self descriptionForKind];
  v12[4] = v6;
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
  v7 = [(PAAccess *)self descriptionForKind];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestampAdjustment];
  v9 = [v3 stringWithFormat:@"<%@ %p> accessor:<%@> identifier:%@ kind:%@ timestampAdjustment:%@ visibilityState:%lu assetIdentifierCount:%lu accessCount:%lu", v4, self, accessor, identifier, v7, v8, self->_visibilityState, -[NSSet count](self->_assetIdentifiers, "count"), self->_accessCount];

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

- (PAAccess)initWithAccessor:(id)a3 assetIdentifiers:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [(PAAccess *)self initWithAccessor:v8 identifier:v9 kind:1 assetIdentifiers:v7 visibilityState:0 accessEventCount:0 accessCount:0];

  return v10;
}

- (PAAccess)initWithAccessor:(id)a3 identifier:(id)a4 kind:(int64_t)a5 assetIdentifiers:(id)a6 visibilityState:(int64_t)a7 accessEventCount:(unint64_t)a8 accessCount:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v26.receiver = self;
  v26.super_class = PAAccess;
  v19 = [(PAAccess *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_accessor, a3);
    objc_storeStrong(&v20->_identifier, a4);
    v20->_kind = a5;
    v20->_timestampAdjustment = 0.0;
    v20->_visibilityState = a7;
    v21 = [v18 copy];
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

    v20->_accessCount = a9;
    v20->_eventCount = a8;
  }

  return v20;
}

- (id)asIntervalEndEventWithTimestampAdjustment:(double)a3
{
  v4 = [(PAAccess *)self copy];
  *(v4 + 32) = 3;
  v5 = [MEMORY[0x1E695DFD8] set];
  v6 = *(v4 + 40);
  *(v4 + 40) = v5;

  *(v4 + 48) = a3;

  return v4;
}

- (id)asIntervalEventWithAssetIdentifiers:(id)a3 visibilityState:(int64_t)a4 accessEventCount:(unint64_t)a5
{
  v8 = a3;
  v9 = [(PAAccess *)self copy];
  v9[4] = 4;
  v10 = [v8 copy];

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

  v9[1] = a4;
  v9[8] = a5;

  return v9;
}

- (id)copyWithNewIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(PAAccess *)self copy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 24), a3);
  }

  return v7;
}

- (id)copyWithNewKind:(int64_t)a3
{
  result = [(PAAccess *)self copy];
  if (result)
  {
    *(result + 4) = a3;
  }

  return result;
}

- (id)copyWithNewAssetIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PAAccess *)self copy];
  if (v5)
  {
    v6 = [v4 copy];
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

  v3 = [(PAAccess *)self category];
  v4 = [v3 isEqual:@"contacts"];

  return v4;
}

- (NSString)descriptionForCategory
{
  v2 = [(PAAccess *)self category];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"unknown";
  }

  v5 = v4;

  return &v4->isa;
}

- (unint64_t)hashWithOptions:(unint64_t)a3
{
  v3 = a3;
  v5 = [(PAApplication *)self->_accessor hash];
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = [(NSUUID *)self->_identifier hash]- v5 + 32 * v5;
    if ((v3 & 2) != 0)
    {
LABEL_3:
      if ((v3 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v5 = self->_kind - v5 + 32 * v5;
  if ((v3 & 4) != 0)
  {
LABEL_4:
    if ((v3 & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v5 = [(NSSet *)self->_assetIdentifiers hash]- v5 + 32 * v5;
    if ((v3 & 0x10) != 0)
    {
      return v5;
    }

    return self->_visibilityState - v5 + 32 * v5;
  }

LABEL_10:
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestampAdjustment];
  v5 = [v7 hash] - v5 + 32 * v5;

  if ((v3 & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v3 & 0x10) == 0)
  {
    return self->_visibilityState - v5 + 32 * v5;
  }

  return v5;
}

- (BOOL)isEqualToAccess:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 != self)
  {
    if (![(PAAccess *)v6 isMemberOfClass:objc_opt_class()])
    {
      goto LABEL_18;
    }

    accessor = self->_accessor;
    v8 = [(PAAccess *)v6 accessor];
    LODWORD(accessor) = [(PAApplication *)accessor isEqual:v8];

    if (!accessor)
    {
      goto LABEL_18;
    }

    if ((v4 & 1) == 0)
    {
      identifier = self->_identifier;
      v10 = [(PAAccess *)v6 identifier];
      LODWORD(identifier) = [(NSUUID *)identifier isEqual:v10];

      if (!identifier)
      {
        goto LABEL_18;
      }
    }

    if ((v4 & 2) == 0)
    {
      kind = self->_kind;
      if (kind != [(PAAccess *)v6 kind])
      {
        goto LABEL_18;
      }
    }

    if ((v4 & 4) == 0)
    {
      timestampAdjustment = self->_timestampAdjustment;
      [(PAAccess *)v6 timestampAdjustment];
      if (timestampAdjustment != v13)
      {
        goto LABEL_18;
      }
    }

    if ((v4 & 8) == 0)
    {
      assetIdentifiers = self->_assetIdentifiers;
      v15 = [(PAAccess *)v6 assetIdentifiers];
      v16 = v15;
      if (assetIdentifiers == v15)
      {
      }

      else
      {
        v17 = self->_assetIdentifiers;
        v18 = [(PAAccess *)v6 assetIdentifiers];
        LODWORD(v17) = [(NSSet *)v17 isEqual:v18];

        if (!v17)
        {
LABEL_18:
          v20 = 0;
          goto LABEL_19;
        }
      }
    }

    if ((v4 & 0x10) == 0)
    {
      visibilityState = self->_visibilityState;
      if (visibilityState != [(PAAccess *)v6 visibilityState])
      {
        goto LABEL_18;
      }
    }
  }

  v20 = 1;
LABEL_19:

  return v20;
}

- (id)copyWithNewAccessor:(id)a3
{
  v5 = a3;
  accessor = self->_accessor;
  if (accessor == v5 || [(PAApplication *)accessor isEqual:v5])
  {
    v7 = self;
  }

  else
  {
    v8 = [(PAAccess *)self copy];
    v7 = v8;
    if (v8)
    {
      objc_storeStrong((v8 + 16), a3);
    }
  }

  return v7;
}

- (id)copyWithNewTimestampAdjustment:(double)a3
{
  result = [(PAAccess *)self copy];
  if (result)
  {
    *(result + 6) = a3;
  }

  return result;
}

- (PAAccess)initWithCoder:(id)a3
{
  v4 = initWithCoder__once;
  v5 = a3;
  if (v4 != -1)
  {
    [PAAccess initWithCoder:];
  }

  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"accessor"];
  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v8 = [v5 decodeIntegerForKey:@"kind"];
  v9 = [v5 decodeObjectOfClasses:initWithCoder__allowedIdentifierClasses forKey:@"assetIdentifiers"];
  v10 = [v5 decodeIntegerForKey:@"visibilityState"];
  v11 = [v5 decodeIntegerForKey:@"eventCount"];
  v12 = [v5 decodeIntegerForKey:@"accessCount"];

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

- (void)encodeWithCoder:(id)a3
{
  accessor = self->_accessor;
  v5 = a3;
  [v5 encodeObject:accessor forKey:@"accessor"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_kind forKey:@"kind"];
  [v5 encodeObject:self->_assetIdentifiers forKey:@"assetIdentifiers"];
  [v5 encodeInteger:self->_visibilityState forKey:@"visibilityState"];
  [v5 encodeInteger:self->_eventCount forKey:@"eventCount"];
  [v5 encodeInteger:self->_accessCount forKey:@"accessCount"];
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 >= 3)
  {
    v6 = a3;
    v4 = [[a1 alloc] initWithProtoData:v6];
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
  v3 = [(PAAccess *)self JSONObject];
  v4 = [v2 dataWithJSONObject:v3 options:3 error:0];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PAApplication *)self->_accessor copyWithZone:a3];
  v7 = [(NSUUID *)self->_identifier copyWithZone:a3];
  v8 = [v5 initWithAccessor:v6 identifier:v7 kind:self->_kind assetIdentifiers:self->_assetIdentifiers visibilityState:self->_visibilityState accessEventCount:self->_eventCount accessCount:self->_accessCount];

  return v8;
}

- (id)encodeAsProto
{
  v2 = [(PAAccess *)self proto];
  v3 = [v2 data];

  return v3;
}

- (PAAccess)initWithProto:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [PAApplication alloc];
    v7 = [v5 accessor];
    v8 = [(PAApplication *)v6 initWithProto:v7];

    if (v8 && ([v5 identifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10 == 16))
    {
      v11 = objc_alloc(MEMORY[0x1E696AFB0]);
      v12 = [v5 identifier];
      v13 = [v11 initWithUUIDBytes:{objc_msgSend(v12, "bytes")}];

      if (v13 && (v14 = [v5 kind], v14 - 1 <= 3))
      {
        v15 = v14;
        v16 = [v5 assetIdentifiers];
        v17 = MEMORY[0x1E695DFD8];
        if (v16)
        {
          v18 = [v5 assetIdentifiers];
          v19 = [v17 setWithArray:v18];
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

        v20 = self;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (PAAccess)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[PAPBAccess alloc] initWithData:v4];

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
  v4 = [(PAApplication *)self->_accessor proto];
  [v3 setAccessor:v4];

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

    v7 = [(PAAccess *)self assetIdentifiers];
    v8 = [v7 allObjects];
    v9 = [v8 mutableCopy];
    [v3 setAssetIdentifiers:v9];

    v6 = v3;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

@end