@interface TUEmergencyMediaItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMediaItem:(id)a3;
- (TUEmergencyMediaItem)initWithAssetId:(id)a3 mediaType:(int64_t)a4;
- (TUEmergencyMediaItem)initWithCoder:(id)a3;
- (TUEmergencyMediaItem)initWithMediaItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUEmergencyMediaItem

- (TUEmergencyMediaItem)initWithMediaItem:(id)a3
{
  v4 = a3;
  v5 = [v4 assetId];
  v6 = [v4 emergencyMediaType];

  v7 = [(TUEmergencyMediaItem *)self initWithAssetId:v5 mediaType:v6];
  return v7;
}

- (TUEmergencyMediaItem)initWithAssetId:(id)a3 mediaType:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = TUEmergencyMediaItem;
  v7 = [(TUEmergencyMediaItem *)&v11 init];
  if (v7)
  {
    if (!v6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUEmergencyMediaItem initWithAssetId:mediaType:]", @"assetId"}];
    }

    v8 = [v6 copy];
    assetId = v7->_assetId;
    v7->_assetId = v8;

    v7->_emergencyMediaType = a4;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUEmergencyMediaItem allocWithZone:a3];

  return [(TUEmergencyMediaItem *)v4 initWithMediaItem:self];
}

- (void)encodeWithCoder:(id)a3
{
  assetId = self->_assetId;
  v5 = a3;
  v6 = NSStringFromSelector(sel_assetId);
  [v5 encodeObject:assetId forKey:v6];

  emergencyMediaType = self->_emergencyMediaType;
  v8 = NSStringFromSelector(sel_emergencyMediaType);
  [v5 encodeInteger:emergencyMediaType forKey:v8];
}

- (TUEmergencyMediaItem)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TUEmergencyMediaItem;
  v5 = [(TUEmergencyMediaItem *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_assetId);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    assetId = v5->_assetId;
    v5->_assetId = v8;

    v10 = NSStringFromSelector(sel_emergencyMediaType);
    v5->_emergencyMediaType = [v4 decodeIntegerForKey:v10];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_assetId);
  v5 = [(TUEmergencyMediaItem *)self assetId];
  [v3 appendFormat:@"%@=%@", v4, v5];

  v6 = NSStringFromSelector(sel_emergencyMediaType);
  [v3 appendFormat:@"%@=%ld", v6, -[TUEmergencyMediaItem emergencyMediaType](self, "emergencyMediaType")];

  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(TUEmergencyMediaItem *)self assetId];
  v4 = [v3 hash];
  v5 = [(TUEmergencyMediaItem *)self emergencyMediaType];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUEmergencyMediaItem *)self isEqualToMediaItem:v4];
  }

  return v5;
}

- (BOOL)isEqualToMediaItem:(id)a3
{
  v4 = a3;
  v5 = [(TUEmergencyMediaItem *)self assetId];
  v6 = [v4 assetId];
  if (TUObjectsAreEqualOrNil(v5, v6))
  {
    v7 = [(TUEmergencyMediaItem *)self emergencyMediaType];
    v8 = v7 == [v4 emergencyMediaType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end