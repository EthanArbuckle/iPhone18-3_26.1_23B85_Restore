@interface TUEmergencyMediaItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMediaItem:(id)item;
- (TUEmergencyMediaItem)initWithAssetId:(id)id mediaType:(int64_t)type;
- (TUEmergencyMediaItem)initWithCoder:(id)coder;
- (TUEmergencyMediaItem)initWithMediaItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUEmergencyMediaItem

- (TUEmergencyMediaItem)initWithMediaItem:(id)item
{
  itemCopy = item;
  assetId = [itemCopy assetId];
  emergencyMediaType = [itemCopy emergencyMediaType];

  v7 = [(TUEmergencyMediaItem *)self initWithAssetId:assetId mediaType:emergencyMediaType];
  return v7;
}

- (TUEmergencyMediaItem)initWithAssetId:(id)id mediaType:(int64_t)type
{
  idCopy = id;
  v11.receiver = self;
  v11.super_class = TUEmergencyMediaItem;
  v7 = [(TUEmergencyMediaItem *)&v11 init];
  if (v7)
  {
    if (!idCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUEmergencyMediaItem initWithAssetId:mediaType:]", @"assetId"}];
    }

    v8 = [idCopy copy];
    assetId = v7->_assetId;
    v7->_assetId = v8;

    v7->_emergencyMediaType = type;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUEmergencyMediaItem allocWithZone:zone];

  return [(TUEmergencyMediaItem *)v4 initWithMediaItem:self];
}

- (void)encodeWithCoder:(id)coder
{
  assetId = self->_assetId;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_assetId);
  [coderCopy encodeObject:assetId forKey:v6];

  emergencyMediaType = self->_emergencyMediaType;
  v8 = NSStringFromSelector(sel_emergencyMediaType);
  [coderCopy encodeInteger:emergencyMediaType forKey:v8];
}

- (TUEmergencyMediaItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TUEmergencyMediaItem;
  v5 = [(TUEmergencyMediaItem *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_assetId);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    assetId = v5->_assetId;
    v5->_assetId = v8;

    v10 = NSStringFromSelector(sel_emergencyMediaType);
    v5->_emergencyMediaType = [coderCopy decodeIntegerForKey:v10];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_assetId);
  assetId = [(TUEmergencyMediaItem *)self assetId];
  [v3 appendFormat:@"%@=%@", v4, assetId];

  v6 = NSStringFromSelector(sel_emergencyMediaType);
  [v3 appendFormat:@"%@=%ld", v6, -[TUEmergencyMediaItem emergencyMediaType](self, "emergencyMediaType")];

  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  assetId = [(TUEmergencyMediaItem *)self assetId];
  v4 = [assetId hash];
  emergencyMediaType = [(TUEmergencyMediaItem *)self emergencyMediaType];

  return emergencyMediaType ^ v4;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUEmergencyMediaItem *)self isEqualToMediaItem:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToMediaItem:(id)item
{
  itemCopy = item;
  assetId = [(TUEmergencyMediaItem *)self assetId];
  assetId2 = [itemCopy assetId];
  if (TUObjectsAreEqualOrNil(assetId, assetId2))
  {
    emergencyMediaType = [(TUEmergencyMediaItem *)self emergencyMediaType];
    v8 = emergencyMediaType == [itemCopy emergencyMediaType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end