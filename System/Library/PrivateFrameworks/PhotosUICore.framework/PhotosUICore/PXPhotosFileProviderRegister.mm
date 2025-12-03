@interface PXPhotosFileProviderRegister
+ (BOOL)canRegisterFileRepresentationsFor:(id)for contentType:(id)type configuration:(id)configuration;
+ (NSString)urlQueryItemClientEncodingPolicyKey;
+ (NSString)urlQueryItemDownscalingTargetDimensionKey;
+ (NSString)urlQueryItemIdentifierCodeKey;
+ (NSString)urlQueryItemIncludeCaptionKey;
+ (NSString)urlQueryItemIncludeLocationKey;
+ (NSString)urlQueryItemItemTypeKey;
+ (NSString)urlQueryItemLibraryIdentifierKey;
+ (NSString)urlQueryItemThumbnailSizeKey;
+ (NSString)urlQueryItemUUIDKey;
+ (NSString)urlQueryItemVideoPresetKey;
- (PXPhotosFileProviderRegister)init;
- (PXPhotosFileProviderRegister)initWithConfiguration:(id)configuration fileProviderManager:(id)manager domain:(id)domain;
- (id)registerFileRepresentationsWithItemProvider:(id)provider asset:(id)asset;
- (id)registerFolderRepresentationWithItemProvider:(id)provider object:(id)object;
- (id)registeredFileRepresentationWithContentType:(id)type uuid:(id)uuid identifierCode:(id)code libraryIdentifier:(id)identifier itemType:(unint64_t)itemType encodingPolicy:(int64_t)policy hasLimitedVisibility:(BOOL)visibility;
- (id)registeredFileRepresentationsWithAsset:(id)asset;
- (id)registeredFolderRepresentationWithObject:(id)object;
@end

@implementation PXPhotosFileProviderRegister

+ (NSString)urlQueryItemUUIDKey
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)urlQueryItemIdentifierCodeKey
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)urlQueryItemLibraryIdentifierKey
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)urlQueryItemItemTypeKey
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)urlQueryItemClientEncodingPolicyKey
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)urlQueryItemDownscalingTargetDimensionKey
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)urlQueryItemIncludeLocationKey
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)urlQueryItemIncludeCaptionKey
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)urlQueryItemThumbnailSizeKey
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)urlQueryItemVideoPresetKey
{
  v2 = sub_1A524C634();

  return v2;
}

- (PXPhotosFileProviderRegister)initWithConfiguration:(id)configuration fileProviderManager:(id)manager domain:(id)domain
{
  *(&self->super.isa + OBJC_IVAR___PXPhotosFileProviderRegister_configuration) = configuration;
  *(&self->super.isa + OBJC_IVAR___PXPhotosFileProviderRegister_fileProviderManager) = manager;
  *(&self->super.isa + OBJC_IVAR___PXPhotosFileProviderRegister_domain) = domain;
  v12.receiver = self;
  v12.super_class = type metadata accessor for PhotosFileProviderRegister();
  configurationCopy = configuration;
  managerCopy = manager;
  domainCopy = domain;
  return [(PXPhotosFileProviderRegister *)&v12 init];
}

- (id)registerFileRepresentationsWithItemProvider:(id)provider asset:(id)asset
{
  providerCopy = provider;
  assetCopy = asset;
  selfCopy = self;
  sub_1A498CE30(providerCopy, assetCopy);

  sub_1A5240E64();
  v9 = sub_1A524CA14();

  return v9;
}

- (id)registerFolderRepresentationWithItemProvider:(id)provider object:(id)object
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  providerCopy = provider;
  objectCopy = object;
  selfCopy = self;
  sub_1A498E054(providerCopy, objectCopy, v9);

  v13 = sub_1A5240E64();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v9, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_1A5240D44();
    (*(v14 + 8))(v9, v13);
    v16 = v17;
  }

  return v16;
}

- (id)registeredFolderRepresentationWithObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  v6 = sub_1A498E8BC(objectCopy);

  return v6;
}

- (id)registeredFileRepresentationsWithAsset:(id)asset
{
  assetCopy = asset;
  selfCopy = self;
  sub_1A498EB88(assetCopy);

  type metadata accessor for PhotosFileProviderRegister.FileRepresentation(0);
  v6 = sub_1A524CA14();

  return v6;
}

+ (BOOL)canRegisterFileRepresentationsFor:(id)for contentType:(id)type configuration:(id)configuration
{
  v8 = sub_1A5246D14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  forCopy = for;
  typeCopy = type;
  configurationCopy = configuration;
  sub_1A5246C44();

  _s12PhotosUICore0A20FileProviderRegisterC03caneC15Representations3for11contentType13configurationSbSo7PHAssetC_07UniformJ11Identifiers6UTTypeVAC13ConfigurationCtFZ_0(forCopy, v11, configurationCopy);
  LOBYTE(type) = v15;

  (*(v9 + 8))(v11, v8);
  return type & 1;
}

- (id)registeredFileRepresentationWithContentType:(id)type uuid:(id)uuid identifierCode:(id)code libraryIdentifier:(id)identifier itemType:(unint64_t)itemType encodingPolicy:(int64_t)policy hasLimitedVisibility:(BOOL)visibility
{
  policyCopy = policy;
  itemTypeCopy = itemType;
  HIDWORD(v30) = visibility;
  v33 = sub_1A5246D14();
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  typeCopy = type;
  uuidCopy = uuid;
  codeCopy = code;
  identifierCopy = identifier;
  self;
  sub_1A5246C44();

  v20 = sub_1A524C674();
  v22 = v21;

  v23 = sub_1A524C674();
  v25 = v24;

  v26 = sub_1A524C674();
  v28 = v27;

  sub_1A498F250(v15, v20, v22, v23, v25, v26, v28, itemTypeCopy, policyCopy, BYTE4(v30));
}

- (PXPhotosFileProviderRegister)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end