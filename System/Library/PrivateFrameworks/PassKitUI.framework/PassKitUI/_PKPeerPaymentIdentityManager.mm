@interface _PKPeerPaymentIdentityManager
- (NSData)_profilePictureData;
- (NSData)profilePictureData;
- (PKPeerPaymentProfileAppearanceData)appearanceData;
- (_PeerPaymentIdentityManagerDelegate)_delegate;
- (_PeerPaymentIdentityManagerDelegate)delegate;
- (void)commitUpdatesIfNeeded;
- (void)setAppearanceData:(id)data;
- (void)setDelegate:(id)delegate;
- (void)setProfilePictureData:(id)data;
- (void)setShareLastName:(BOOL)name;
- (void)setShareProfilePicture:(BOOL)picture;
- (void)set_appearanceData:(id)data;
- (void)set_profilePictureData:(id)data;
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

- (void)set_profilePictureData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v6 = dataCopy;
    dataCopy = sub_1BE04AAC4();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v11 = *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v12 = *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  *v10 = dataCopy;
  v10[1] = v8;
  sub_1BD030394(v11, v12);
  sub_1BD030394(dataCopy, v8);
  sub_1BD030220(v11, v12);
  sub_1BD217824(v11, v12);

  sub_1BD030220(v11, v12);

  sub_1BD030220(dataCopy, v8);
}

- (NSData)profilePictureData
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  selfCopy = self;
  sub_1BE04B594();

  v4 = *(selfCopy + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v5 = *(selfCopy + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
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

- (void)setProfilePictureData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v5 = dataCopy;
    dataCopy = sub_1BE04AAC4();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1BD218070(dataCopy, v7);
}

- (void)set_appearanceData:(id)data
{
  v4 = *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData) = data;
  dataCopy = data;
}

- (PKPeerPaymentProfileAppearanceData)appearanceData
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  selfCopy = self;
  sub_1BE04B594();

  v4 = *(selfCopy + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  v5 = v4;

  return v4;
}

- (void)setAppearanceData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_1BD2185B0(dataCopy);
}

- (void)setShareLastName:(BOOL)name
{
  selfCopy = self;
  PeerPaymentIdentityManager.shareLastName.setter(name);
}

- (void)setShareProfilePicture:(BOOL)picture
{
  selfCopy = self;
  PeerPaymentIdentityManager.shareProfilePicture.setter(picture);
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
  selfCopy = self;
  sub_1BE04B594();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BE04B584();

  swift_unknownObjectRelease();
}

- (void)commitUpdatesIfNeeded
{
  selfCopy = self;
  PeerPaymentIdentityManager.commitUpdatesIfNeeded()();
}

@end