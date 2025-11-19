@interface MacSyncedAlbumsAvailabilityObserver
- (_TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver)init;
- (void)dealloc;
- (void)outputEventSignaledForCoalescer:(id)a3;
- (void)photoLibraryDidChange:(id)a3;
@end

@implementation MacSyncedAlbumsAvailabilityObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_photoLibrary);
  v3 = self;
  [v2 unregisterChangeObserver_];
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & v3->super.isa) + 0x130))(KeyPath);

  [*(&v3->super.isa + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer) unregisterObserver_];
  v5.receiver = v3;
  v5.super_class = type metadata accessor for MacSyncedAlbumsAvailabilityObserver();
  [(MacSyncedAlbumsAvailabilityObserver *)&v5 dealloc];
}

- (_TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)outputEventSignaledForCoalescer:(id)a3
{
  v3 = self;
  _s12PhotosUICore35MacSyncedAlbumsAvailabilityObserverC19outputEventSignaled3forySo16PXEventCoalescerC_tF_0();
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  MacSyncedAlbumsAvailabilityObserver.photoLibraryDidChange(_:)(v4);
}

@end