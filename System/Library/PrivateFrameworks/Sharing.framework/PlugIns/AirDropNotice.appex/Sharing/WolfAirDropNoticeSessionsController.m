@interface WolfAirDropNoticeSessionsController
- (void)transferEndedForIdentifier:(id)a3;
- (void)transferStartedForIdentifier:(id)a3 isFromMe:(id)a4 withTransferState:(id)a5 itemCount:(id)a6 isDestinationDownloads:(id)a7 senderName:(id)a8 localizedTransferDescription:(id)a9 previewImageData:(id)a10 contactIdentifier:(id)a11;
- (void)transferUpdatedForIdentifier:(id)a3 withTransferState:(id)a4 transferAccepted:(id)a5 completedUnitCount:(id)a6 totalUnitCount:(id)a7 localizedTransferDescription:(id)a8;
@end

@implementation WolfAirDropNoticeSessionsController

- (void)transferStartedForIdentifier:(id)a3 isFromMe:(id)a4 withTransferState:(id)a5 itemCount:(id)a6 isDestinationDownloads:(id)a7 senderName:(id)a8 localizedTransferDescription:(id)a9 previewImageData:(id)a10 contactIdentifier:(id)a11
{
  v17 = a10;
  v35 = sub_100008B98();
  v37 = v18;
  if (a8)
  {
    v34 = sub_100008B98();
    v36 = v19;
    if (a9)
    {
LABEL_3:
      v20 = sub_100008B98();
      v38 = v21;
      goto LABEL_6;
    }
  }

  else
  {
    v34 = 0;
    v36 = 0;
    if (a9)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v38 = 0;
LABEL_6:
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v30 = a7;
  v22 = a11;
  v23 = self;
  if (a10)
  {
    v24 = a10;
    v17 = sub_100008A98();
    v26 = v25;

    if (v22)
    {
LABEL_8:
      v27 = sub_100008B98();
      v29 = v28;

      goto LABEL_11;
    }
  }

  else
  {
    v26 = 0xF000000000000000;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  v27 = 0;
  v29 = 0;
LABEL_11:
  sub_100003130(v35, v37, v33, v32, v31, v30, v34, v36, v20, v38, v17, v26, v27, v29);

  sub_10000856C(v17, v26);
}

- (void)transferUpdatedForIdentifier:(id)a3 withTransferState:(id)a4 transferAccepted:(id)a5 completedUnitCount:(id)a6 totalUnitCount:(id)a7 localizedTransferDescription:(id)a8
{
  v14 = sub_100008B98();
  v16 = v15;
  if (a8)
  {
    v17 = sub_100008B98();
    a8 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = self;
  sub_100004A78(v14, v16, v19, v20, v21, v22, v17, a8);
}

- (void)transferEndedForIdentifier:(id)a3
{
  v4 = sub_100008B98();
  v6 = v5;
  v7 = self;
  sub_100004564(v4, v6);
}

@end