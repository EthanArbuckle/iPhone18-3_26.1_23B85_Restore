@interface FairPlayKeyLoadingMock
- (void)createSessionWithAsset:(id)a3 completion:(id)a4;
- (void)renewKeyRequestWithAsset:(id)a3 completion:(id)a4;
- (void)renewKeyRequestsWithAssets:(id)a3 completion:(id)a4;
- (void)renewKeyWithSession:(id)a3;
- (void)startKeyRequestWithSession:(id)a3 completion:(id)a4;
- (void)stopKeyRequestWithAsset:(id)a3 completion:(id)a4;
- (void)stopKeyRequestWithSession:(id)a3 completion:(id)a4;
@end

@implementation FairPlayKeyLoadingMock

- (void)createSessionWithAsset:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
      v12 = a3;

      v10(v12, v9, v8);
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

  v13 = a3;

LABEL_6:
  sub_1D8D15664(v9);
}

- (void)startKeyRequestWithSession:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

      v10(a3, v9, v8);
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

- (void)renewKeyRequestWithAsset:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
      v12 = a3;

      v10(v12, v9, v8);
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

  v13 = a3;

LABEL_6:
  sub_1D8D15664(v9);
}

- (void)renewKeyRequestsWithAssets:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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

- (void)renewKeyWithSession:(id)a3
{
  v3 = *self->renewKeyHandler;
  if (v3)
  {
    v5 = *&self->renewKeyHandler[8];
    swift_unknownObjectRetain();

    v3(a3);

    swift_unknownObjectRelease();
  }
}

- (void)stopKeyRequestWithAsset:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
      v12 = a3;

      v10(v12, v9, v8);
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

  v13 = a3;

LABEL_6:
  sub_1D8D15664(v9);
}

- (void)stopKeyRequestWithSession:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

      v10(a3, v9, v8);
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