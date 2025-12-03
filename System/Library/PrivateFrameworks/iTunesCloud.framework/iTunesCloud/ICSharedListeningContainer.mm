@interface ICSharedListeningContainer
+ (id)albumContainerWithMediaIdentifier:(id)identifier featureName:(id)name;
+ (id)autoPlayContainerWithMediaIdentifier:(id)identifier featureName:(id)name;
+ (id)groupWithFeatureName:(id)name;
+ (id)playlistContainerWithMediaIdentifier:(id)identifier featureName:(id)name;
+ (id)radioContainerWithMediaIdentifier:(id)identifier featureName:(id)name;
+ (id)radioContainerWithSeedItem:(id)item featureName:(id)name;
- (BOOL)isEqual:(id)equal;
- (ICSharedListeningContainer)initWithProtobuf:(id)protobuf;
- (NSString)shortDescription;
- (id)_initWithKind:(int64_t)kind mediaIdentifier:(id)identifier featureName:(id)name;
- (id)_initWithKind:(int64_t)kind seedItem:(id)item featureName:(id)name;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICSharedListeningContainer

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    identifier = [equalCopy identifier];
    v7 = [(NSString *)identifier isEqualToString:identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = [(NSString *)self->_identifier hash];
  v10 = v5 ^ 0x7465646279746573 ^ v9;
  v11 = (v6 + v7) ^ __ROR8__(v7, 51);
  v12 = v8 + v10;
  v13 = (v8 + v10) ^ __ROR8__(v10, 48);
  v14 = v13 + __ROR8__(v6 + v7, 32);
  v15 = v12 + v11;
  v16 = __ROR8__(v11, 47);
  v17 = v14 ^ __ROR8__(v13, 43) ^ 0x800000000000000;
  v18 = (v14 ^ v9) + (v15 ^ v16);
  v19 = v18 ^ __ROR8__(v15 ^ v16, 51);
  v20 = __ROR8__(v15, 32) + v17;
  v21 = v20 ^ __ROR8__(v17, 48);
  v22 = v21 + __ROR8__(v18, 32);
  v23 = v22 ^ __ROR8__(v21, 43);
  v24 = v20 + v19;
  v25 = v24 ^ __ROR8__(v19, 47);
  v26 = (v22 ^ 0x800000000000000) + v25;
  v27 = __ROR8__(v26, 32);
  v28 = v26 ^ __ROR8__(v25, 51);
  v29 = (__ROR8__(v24, 32) ^ 0xFFLL) + v23;
  v30 = v29 ^ __ROR8__(v23, 48);
  v31 = v27 + v30;
  v32 = (v27 + v30) ^ __ROR8__(v30, 43);
  v33 = v28 + v29;
  v34 = v33 ^ __ROR8__(v28, 47);
  v35 = v34 + v31;
  v36 = v35 ^ __ROR8__(v34, 51);
  v37 = __ROR8__(v33, 32) + v32;
  v38 = __ROR8__(v32, 48);
  v39 = __ROR8__(v35, 32) + (v37 ^ v38);
  v40 = v39 ^ __ROR8__(v37 ^ v38, 43);
  v41 = v36 + v37;
  v42 = v41 ^ __ROR8__(v36, 47);
  v43 = v42 + v39;
  v44 = v43 ^ __ROR8__(v42, 51);
  v45 = __ROR8__(v41, 32) + v40;
  v46 = __ROR8__(v40, 48);
  v47 = __ROR8__(v43, 32) + (v45 ^ v46);
  return (v44 + v45) ^ __ROR8__(v44, 47) ^ v47 ^ __ROR8__(v44 + v45, 32) ^ v47 ^ __ROR8__(v45 ^ v46, 43);
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  v5 = _NSStringFromICSharedListeningContainerKind(self->_kind);
  v6 = [v3 stringWithFormat:@"<CONTAINER id=%@ kind=%@ mediaID=%@ featureName=%@>", identifier, v5, self->_mediaIdentifier, self->_featureName];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = self->_identifier;
  v6 = _NSStringFromICSharedListeningContainerKind(self->_kind);
  v7 = [v3 stringWithFormat:@"<%@: %p id=%@ kind=%@ mediaID=%@ featureName=%@>", v4, self, identifier, v6, self->_mediaIdentifier, self->_featureName];

  return v7;
}

- (id)_initWithKind:(int64_t)kind seedItem:(id)item featureName:(id)name
{
  itemCopy = item;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = ICSharedListeningContainer;
  v10 = [(ICSharedListeningContainer *)&v18 init];
  if (v10)
  {
    v11 = MSVNanoIDCreateTaggedPointer();
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_kind = kind;
    v13 = [itemCopy copy];
    seedItem = v10->_seedItem;
    v10->_seedItem = v13;

    v15 = [nameCopy copy];
    featureName = v10->_featureName;
    v10->_featureName = v15;
  }

  return v10;
}

- (id)_initWithKind:(int64_t)kind mediaIdentifier:(id)identifier featureName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = ICSharedListeningContainer;
  v10 = [(ICSharedListeningContainer *)&v18 init];
  if (v10)
  {
    v11 = MSVNanoIDCreateTaggedPointer();
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_kind = kind;
    v13 = [identifierCopy copy];
    mediaIdentifier = v10->_mediaIdentifier;
    v10->_mediaIdentifier = v13;

    v15 = [nameCopy copy];
    featureName = v10->_featureName;
    v10->_featureName = v15;
  }

  return v10;
}

- (ICSharedListeningContainer)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v23.receiver = self;
    v23.super_class = ICSharedListeningContainer;
    v5 = [(ICSharedListeningContainer *)&v23 init];
    if (v5)
    {
      v6 = protobufCopy[1];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = MSVNanoIDCreateTaggedPointer();
      }

      identifier = v5->_identifier;
      v5->_identifier = v8;

      if (*(protobufCopy + 44))
      {
        v11 = *(protobufCopy + 10);
        if ((v11 - 1) >= 4)
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v5->_kind = v11;
      v12 = protobufCopy[3];
      v13 = [v12 copy];
      mediaIdentifier = v5->_mediaIdentifier;
      v5->_mediaIdentifier = v13;

      v15 = protobufCopy[2];
      v16 = [v15 copy];
      featureName = v5->_featureName;
      v5->_featureName = v16;

      if (v5->_kind == 2 && !v5->_mediaIdentifier)
      {
        objc_storeStrong(&v5->_mediaIdentifier, v5->_identifier);
      }

      v18 = protobufCopy[4];
      v19 = [v18 copy];
      stationHash = v5->_stationHash;
      v5->_stationHash = v19;
    }

    v9 = v5;
    self = v9;
  }

  else
  {
    v9 = [ICSharedListeningContainer groupWithFeatureName:0];
  }

  v21 = v9;

  return v21;
}

+ (id)autoPlayContainerWithMediaIdentifier:(id)identifier featureName:(id)name
{
  nameCopy = name;
  identifierCopy = identifier;
  v7 = [objc_alloc(objc_opt_class()) _initWithKind:5 mediaIdentifier:identifierCopy featureName:nameCopy];

  return v7;
}

+ (id)groupWithFeatureName:(id)name
{
  nameCopy = name;
  v4 = [objc_alloc(objc_opt_class()) _initWithKind:4 mediaIdentifier:0 featureName:nameCopy];

  return v4;
}

+ (id)radioContainerWithSeedItem:(id)item featureName:(id)name
{
  nameCopy = name;
  itemCopy = item;
  v7 = [objc_alloc(objc_opt_class()) _initWithKind:2 seedItem:itemCopy featureName:nameCopy];

  return v7;
}

+ (id)radioContainerWithMediaIdentifier:(id)identifier featureName:(id)name
{
  nameCopy = name;
  identifierCopy = identifier;
  v7 = [objc_alloc(objc_opt_class()) _initWithKind:2 mediaIdentifier:identifierCopy featureName:nameCopy];

  return v7;
}

+ (id)playlistContainerWithMediaIdentifier:(id)identifier featureName:(id)name
{
  nameCopy = name;
  identifierCopy = identifier;
  v7 = [objc_alloc(objc_opt_class()) _initWithKind:3 mediaIdentifier:identifierCopy featureName:nameCopy];

  return v7;
}

+ (id)albumContainerWithMediaIdentifier:(id)identifier featureName:(id)name
{
  nameCopy = name;
  identifierCopy = identifier;
  v7 = [objc_alloc(objc_opt_class()) _initWithKind:1 mediaIdentifier:identifierCopy featureName:nameCopy];

  return v7;
}

@end