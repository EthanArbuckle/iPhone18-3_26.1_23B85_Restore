@interface FairPlayKeyLoadingMock
- (void)createSessionWithAsset:(id)asset completion:(id)completion;
- (void)renewKeyRequestWithAsset:(id)asset completion:(id)completion;
- (void)renewKeyRequestsWithAssets:(id)assets completion:(id)completion;
- (void)renewKeyWithSession:(id)session;
- (void)startKeyRequestWithSession:(id)session completion:(id)completion;
- (void)stopKeyRequestWithAsset:(id)asset completion:(id)completion;
- (void)stopKeyRequestWithSession:(id)session completion:(id)completion;
@end

@implementation FairPlayKeyLoadingMock

- (void)createSessionWithAsset:(id)asset completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = sub_1D8D96FE8;
    v10 = *self->createSessionHandler;
    if (v10)
    {
LABEL_3:
      v11 = *&self->createSessionHandler[8];
      assetCopy = asset;

      v10(assetCopy, v9, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = *self->createSessionHandler;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  assetCopy2 = asset;

LABEL_6:
  sub_1D8D15664(v9);
}

- (void)startKeyRequestWithSession:(id)session completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = sub_1D8E8B5C0;
    v10 = *self->startKeyRequestHandler;
    if (v10)
    {
LABEL_3:
      v11 = *&self->startKeyRequestHandler[8];
      swift_unknownObjectRetain();

      v10(session, v9, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = *self->startKeyRequestHandler;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  swift_unknownObjectRetain();

LABEL_6:
  sub_1D8D15664(v9);
  swift_unknownObjectRelease();
}

- (void)renewKeyRequestWithAsset:(id)asset completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = sub_1D8E8B5C0;
    v10 = *self->renewKeyRequestHandler;
    if (v10)
    {
LABEL_3:
      v11 = *&self->renewKeyRequestHandler[8];
      assetCopy = asset;

      v10(assetCopy, v9, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = *self->renewKeyRequestHandler;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  assetCopy2 = asset;

LABEL_6:
  sub_1D8D15664(v9);
}

- (void)renewKeyRequestsWithAssets:(id)assets completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for FairPlayAsset();
  v6 = sub_1D91785FC();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = sub_1D8E8CCFC;
    v9 = *self->renewKeyRequestsHandler;
    if (v9)
    {
LABEL_3:
      v10 = *&self->renewKeyRequestsHandler[8];

      v9(v6, v8, v7);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = *self->renewKeyRequestsHandler;
    if (v9)
    {
      goto LABEL_3;
    }
  }

LABEL_6:

  sub_1D8D15664(v8);
}

- (void)renewKeyWithSession:(id)session
{
  v3 = *self->renewKeyHandler;
  if (v3)
  {
    v5 = *&self->renewKeyHandler[8];
    swift_unknownObjectRetain();

    v3(session);

    swift_unknownObjectRelease();
  }
}

- (void)stopKeyRequestWithAsset:(id)asset completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = sub_1D8E8B5C0;
    v10 = *self->stopKeyRequestAssetHandler;
    if (v10)
    {
LABEL_3:
      v11 = *&self->stopKeyRequestAssetHandler[8];
      assetCopy = asset;

      v10(assetCopy, v9, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = *self->stopKeyRequestAssetHandler;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  assetCopy2 = asset;

LABEL_6:
  sub_1D8D15664(v9);
}

- (void)stopKeyRequestWithSession:(id)session completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = sub_1D8E899BC;
    v10 = *self->stopKeyRequestSessionHandler;
    if (v10)
    {
LABEL_3:
      v11 = *&self->stopKeyRequestSessionHandler[8];
      swift_unknownObjectRetain();

      v10(session, v9, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = *self->stopKeyRequestSessionHandler;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  swift_unknownObjectRetain();

LABEL_6:
  sub_1D8D15664(v9);
  swift_unknownObjectRelease();
}

@end