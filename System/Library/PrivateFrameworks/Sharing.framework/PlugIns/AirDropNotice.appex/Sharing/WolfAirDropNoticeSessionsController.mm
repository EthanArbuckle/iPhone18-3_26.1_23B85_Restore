@interface WolfAirDropNoticeSessionsController
- (void)transferEndedForIdentifier:(id)identifier;
- (void)transferStartedForIdentifier:(id)identifier isFromMe:(id)me withTransferState:(id)state itemCount:(id)count isDestinationDownloads:(id)downloads senderName:(id)name localizedTransferDescription:(id)description previewImageData:(id)self0 contactIdentifier:(id)self1;
- (void)transferUpdatedForIdentifier:(id)identifier withTransferState:(id)state transferAccepted:(id)accepted completedUnitCount:(id)count totalUnitCount:(id)unitCount localizedTransferDescription:(id)description;
@end

@implementation WolfAirDropNoticeSessionsController

- (void)transferStartedForIdentifier:(id)identifier isFromMe:(id)me withTransferState:(id)state itemCount:(id)count isDestinationDownloads:(id)downloads senderName:(id)name localizedTransferDescription:(id)description previewImageData:(id)self0 contactIdentifier:(id)self1
{
  dataCopy = data;
  v35 = sub_100008B98();
  v37 = v18;
  if (name)
  {
    v34 = sub_100008B98();
    v36 = v19;
    if (description)
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
    if (description)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v38 = 0;
LABEL_6:
  meCopy = me;
  stateCopy = state;
  countCopy = count;
  downloadsCopy = downloads;
  contactIdentifierCopy = contactIdentifier;
  selfCopy = self;
  if (data)
  {
    dataCopy2 = data;
    dataCopy = sub_100008A98();
    v26 = v25;

    if (contactIdentifierCopy)
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
    if (contactIdentifierCopy)
    {
      goto LABEL_8;
    }
  }

  v27 = 0;
  v29 = 0;
LABEL_11:
  sub_100003130(v35, v37, meCopy, stateCopy, countCopy, downloadsCopy, v34, v36, v20, v38, dataCopy, v26, v27, v29);

  sub_10000856C(dataCopy, v26);
}

- (void)transferUpdatedForIdentifier:(id)identifier withTransferState:(id)state transferAccepted:(id)accepted completedUnitCount:(id)count totalUnitCount:(id)unitCount localizedTransferDescription:(id)description
{
  v14 = sub_100008B98();
  v16 = v15;
  if (description)
  {
    v17 = sub_100008B98();
    description = v18;
  }

  else
  {
    v17 = 0;
  }

  stateCopy = state;
  acceptedCopy = accepted;
  countCopy = count;
  unitCountCopy = unitCount;
  selfCopy = self;
  sub_100004A78(v14, v16, stateCopy, acceptedCopy, countCopy, unitCountCopy, v17, description);
}

- (void)transferEndedForIdentifier:(id)identifier
{
  v4 = sub_100008B98();
  v6 = v5;
  selfCopy = self;
  sub_100004564(v4, v6);
}

@end