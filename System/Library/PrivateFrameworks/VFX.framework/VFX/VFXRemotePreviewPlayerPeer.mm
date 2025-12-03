@interface VFXRemotePreviewPlayerPeer
+ (NSURL)projectFolder;
- (NSString)debugDescription;
- (VFXRemotePreviewPlayerPeer)init;
- (VFXRemotePreviewPlayerPeer)initWithDelegate:(id)delegate;
- (VFXStatisticsProvider)rendererStatisticsProvider;
- (void)connectToStudio;
- (void)openPackageWithUrl:(id)url;
- (void)setRendererStatisticsProvider:(id)provider;
@end

@implementation VFXRemotePreviewPlayerPeer

- (VFXStatisticsProvider)rendererStatisticsProvider
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setRendererStatisticsProvider:(id)provider
{
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1AF864148();
  swift_unknownObjectRelease();
}

- (VFXRemotePreviewPlayerPeer)initWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  v3 = sub_1AF868F78();
  swift_unknownObjectRelease();
  return v3;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1AF8646FC();

  v3 = sub_1AFDFCEC8();

  return v3;
}

- (void)connectToStudio
{
  selfCopy = self;
  sub_1AF864834();
}

+ (NSURL)projectFolder
{
  v2 = sub_1AFDFC128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static RemotePreviewPlayerPeer.projectFolder.getter(v6);
  v7 = sub_1AFDFC048();
  (*(v3 + 8))(v6, v2);

  return v7;
}

- (VFXRemotePreviewPlayerPeer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)openPackageWithUrl:(id)url
{
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC0B8();
  selfCopy = self;
  RemotePreviewPlayerPeer.openPackage(url:)(v8);

  (*(v5 + 8))(v8, v4);
}

@end