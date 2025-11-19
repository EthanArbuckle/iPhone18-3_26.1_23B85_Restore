@interface _PKPeerPaymentIdentityManager
- (NSData)_profilePictureData;
- (NSData)profilePictureData;
- (PKPeerPaymentProfileAppearanceData)appearanceData;
- (_PeerPaymentIdentityManagerDelegate)_delegate;
- (_PeerPaymentIdentityManagerDelegate)delegate;
- (void)commitUpdatesIfNeeded;
- (void)setAppearanceData:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setProfilePictureData:(id)a3;
- (void)setShareLastName:(BOOL)a3;
- (void)setShareProfilePicture:(BOOL)a3;
- (void)set_appearanceData:(id)a3;
- (void)set_profilePictureData:(id)a3;
@end

@implementation _PKPeerPaymentIdentityManager

- (NSData)_profilePictureData
{
  v2 = (self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v3 = *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *v2;
    sub_1BD041A38(*v2, v3);
    v6 = sub_1BE04AAB4();
    sub_1BD030220(v5, v3);
    v4 = v6;
  }

  return v4;
}

- (void)set_profilePictureData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = self;
    v6 = v3;
    v3 = sub_1BE04AAC4();
    v8 = v7;
  }

  else
  {
    v9 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v11 = *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v12 = *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  *v10 = v3;
  v10[1] = v8;
  sub_1BD030394(v11, v12);
  sub_1BD030394(v3, v8);
  sub_1BD030220(v11, v12);
  sub_1BD217824(v11, v12);

  sub_1BD030220(v11, v12);

  sub_1BD030220(v3, v8);
}

- (NSData)profilePictureData
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  v3 = self;
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v5 = *(v3 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  sub_1BD030394(v4, v5);

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_1BE04AAB4();
    sub_1BD030220(v4, v5);
    v6 = v7;
  }

  return v6;
}

- (void)setProfilePictureData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_1BE04AAC4();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_1BD218070(v3, v7);
}

- (void)set_appearanceData:(id)a3
{
  v4 = *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData) = a3;
  v3 = a3;
}

- (PKPeerPaymentProfileAppearanceData)appearanceData
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  v3 = self;
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  v5 = v4;

  return v4;
}

- (void)setAppearanceData:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD2185B0(v4);
}

- (void)setShareLastName:(BOOL)a3
{
  v4 = self;
  PeerPaymentIdentityManager.shareLastName.setter(a3);
}

- (void)setShareProfilePicture:(BOOL)a3
{
  v4 = self;
  PeerPaymentIdentityManager.shareProfilePicture.setter(a3);
}

- (_PeerPaymentIdentityManagerDelegate)_delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_PeerPaymentIdentityManagerDelegate)delegate
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  v3 = self;
  sub_1BE04B594();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BE04B584();

  swift_unknownObjectRelease();
}

- (void)commitUpdatesIfNeeded
{
  v2 = self;
  PeerPaymentIdentityManager.commitUpdatesIfNeeded()();
}

@end