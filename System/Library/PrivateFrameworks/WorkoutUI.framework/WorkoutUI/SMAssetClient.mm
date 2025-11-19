@interface SMAssetClient
- (SMAssetClient)init;
- (SMAssetClient)initWithDependenciesWrapper:(id)a3;
- (void)fetchArtwork:(id)a3 size:(CGSize)a4 completion:(id)a5;
@end

@implementation SMAssetClient

- (SMAssetClient)initWithDependenciesWrapper:(id)a3
{
  v4 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SeymourMedia19ArtworkImageLoading_pMd);
  Dependencies.resolve<A>(failureHandler:)();

  outlined init with take of ArtworkImageLoading(&v8, self + OBJC_IVAR___SMAssetClient_artworkImageLoader);
  v7.receiver = self;
  v7.super_class = type metadata accessor for AssetClientBridge();
  v5 = [(SMAssetClient *)&v7 init];

  return v5;
}

- (void)fetchArtwork:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVySo7UIImageCGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR___SMAssetClient_artworkImageLoader), *&self->artworkImageLoader[OBJC_IVAR___SMAssetClient_artworkImageLoader + 16]);
  v19 = a3;
  v14 = self;
  dispatch thunk of ArtworkImageLoading.fetchArtwork(_:size:)();
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIImage?, @unowned NSError?) -> ();
  *(v15 + 24) = v13;

  v16 = Promise.operation.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = closure #1 in AssetClientBridge.fetchArtwork(_:size:completion:)partial apply;
  *(v17 + 24) = v15;

  v16(closure #1 in Promise.resolve(_:)specialized partial apply, v17);

  (*(v9 + 8))(v11, v8);
}

- (SMAssetClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end