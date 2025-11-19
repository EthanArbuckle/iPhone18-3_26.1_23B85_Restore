@interface PXPhotosFileProviderRegister
+ (BOOL)canRegisterFileRepresentationsFor:(id)a3 contentType:(id)a4 configuration:(id)a5;
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
- (PXPhotosFileProviderRegister)initWithConfiguration:(id)a3 fileProviderManager:(id)a4 domain:(id)a5;
- (id)registerFileRepresentationsWithItemProvider:(id)a3 asset:(id)a4;
- (id)registerFolderRepresentationWithItemProvider:(id)a3 object:(id)a4;
- (id)registeredFileRepresentationWithContentType:(id)a3 uuid:(id)a4 identifierCode:(id)a5 libraryIdentifier:(id)a6 itemType:(unint64_t)a7 encodingPolicy:(int64_t)a8 hasLimitedVisibility:(BOOL)a9;
- (id)registeredFileRepresentationsWithAsset:(id)a3;
- (id)registeredFolderRepresentationWithObject:(id)a3;
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

- (PXPhotosFileProviderRegister)initWithConfiguration:(id)a3 fileProviderManager:(id)a4 domain:(id)a5
{
  *(&self->super.isa + OBJC_IVAR___PXPhotosFileProviderRegister_configuration) = a3;
  *(&self->super.isa + OBJC_IVAR___PXPhotosFileProviderRegister_fileProviderManager) = a4;
  *(&self->super.isa + OBJC_IVAR___PXPhotosFileProviderRegister_domain) = a5;
  v12.receiver = self;
  v12.super_class = type metadata accessor for PhotosFileProviderRegister();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return [(PXPhotosFileProviderRegister *)&v12 init];
}

- (id)registerFileRepresentationsWithItemProvider:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A498CE30(v6, v7);

  sub_1A5240E64();
  v9 = sub_1A524CA14();

  return v9;
}

- (id)registerFolderRepresentationWithItemProvider:(id)a3 object:(id)a4
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1A498E054(v10, v11, v9);

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

- (id)registeredFolderRepresentationWithObject:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A498E8BC(v4);

  return v6;
}

- (id)registeredFileRepresentationsWithAsset:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A498EB88(v4);

  type metadata accessor for PhotosFileProviderRegister.FileRepresentation(0);
  v6 = sub_1A524CA14();

  return v6;
}

+ (BOOL)canRegisterFileRepresentationsFor:(id)a3 contentType:(id)a4 configuration:(id)a5
{
  v8 = sub_1A5246D14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3;
  v13 = a4;
  v14 = a5;
  sub_1A5246C44();

  _s12PhotosUICore0A20FileProviderRegisterC03caneC15Representations3for11contentType13configurationSbSo7PHAssetC_07UniformJ11Identifiers6UTTypeVAC13ConfigurationCtFZ_0(v12, v11, v14);
  LOBYTE(a4) = v15;

  (*(v9 + 8))(v11, v8);
  return a4 & 1;
}

- (id)registeredFileRepresentationWithContentType:(id)a3 uuid:(id)a4 identifierCode:(id)a5 libraryIdentifier:(id)a6 itemType:(unint64_t)a7 encodingPolicy:(int64_t)a8 hasLimitedVisibility:(BOOL)a9
{
  v31 = a8;
  v32 = a7;
  HIDWORD(v30) = a9;
  v33 = sub_1A5246D14();
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  self;
  sub_1A5246C44();

  v20 = sub_1A524C674();
  v22 = v21;

  v23 = sub_1A524C674();
  v25 = v24;

  v26 = sub_1A524C674();
  v28 = v27;

  sub_1A498F250(v15, v20, v22, v23, v25, v26, v28, v32, v31, BYTE4(v30));
}

- (PXPhotosFileProviderRegister)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end