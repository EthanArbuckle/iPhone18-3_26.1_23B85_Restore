@interface APPCPromotedContent
- (APInstallAttribution)installAttribution;
- (APPCCarouselMetricsHelping)metricsHelper;
- (APPCDiagnosticMetricsHelping)diagnosticMetricHelper;
- (APPCPromotableContext)context;
- (APPCPromotedContent)init;
- (BOOL)attachedToView;
- (BOOL)available;
- (BOOL)consumed;
- (BOOL)discarded;
- (BOOL)discardedDueToPolicy;
- (BOOL)isMRAID;
- (BOOL)isOutstreamVideoAd;
- (BOOL)vended;
- (NSArray)adServerEnvironments;
- (NSArray)representations;
- (NSDate)expirationDate;
- (NSDate)receivedReferenceTime;
- (NSDictionary)metaData;
- (NSDictionary)transparencyDetailsDictionary;
- (NSError)error;
- (NSString)debugDescription;
- (NSURL)disclosureURL;
- (NSUUID)contextIdentifier;
- (double)impressionThreshold;
- (int64_t)adType;
- (int64_t)feedMetadataContentProviderID;
- (int64_t)minimumTimeBetweenPresentation;
- (int64_t)numOfArticlesSinceInterstitial;
- (int64_t)serverUnfilledReason;
- (unint64_t)retrieveNetworkType;
- (void)notifyListenersPCUsedWithPcID:(id)d;
- (void)registerPromotedContentUsedWithAction:(id)action;
- (void)setAttachedToView:(BOOL)view;
- (void)setConsumed:(BOOL)consumed;
- (void)setDiscarded:(BOOL)discarded;
- (void)setDiscardedDueToPolicy:(BOOL)policy;
- (void)setDisclosureURL:(id)l;
- (void)setExpirationDate:(id)date;
- (void)setImpressionThreshold:(double)threshold;
- (void)setMetaData:(id)data;
- (void)setMinimumTimeBetweenPresentation:(int64_t)presentation;
- (void)setRepresentations:(id)representations;
- (void)setServerUnfilledReason:(int64_t)reason;
- (void)setVended:(BOOL)vended;
@end

@implementation APPCPromotedContent

- (APPCCarouselMetricsHelping)metricsHelper
{
  v3 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (int64_t)serverUnfilledReason
{
  v3 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)isOutstreamVideoAd
{
  v3 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = (self + OBJC_IVAR___APPCPromotedContent_identifier);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  selfCopy = self;

  LOBYTE(v7) = sub_1C1AB1C0C(v7, v6, v4);

  return v7 & 1;
}

- (int64_t)adType
{
  selfCopy = self;
  v3 = sub_1C1AB6388();

  return v3;
}

- (BOOL)discarded
{
  v3 = OBJC_IVAR___APPCPromotedContent_discarded;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setVended:(BOOL)vended
{
  selfCopy = self;
  sub_1C1AB6E24(vended);
}

- (APPCPromotableContext)context
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)isMRAID
{
  v3 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v4 = *(self + v3);
  selfCopy = self;

  v7 = sub_1C1ABBCD4(v6);

  return v7 & 1;
}

- (APPCDiagnosticMetricsHelping)diagnosticMetricHelper
{
  v2 = *(self + OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (NSDictionary)metaData
{
  v3 = OBJC_IVAR___APPCPromotedContent_metaData;
  swift_beginAccess();
  if (*(self + v3))
  {

    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    v4 = sub_1C1B94CA8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMetaData:(id)data
{
  dataCopy = data;
  if (data)
  {
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    dataCopy = sub_1C1B94CB8();
  }

  v5 = OBJC_IVAR___APPCPromotedContent_metaData;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = dataCopy;
}

- (NSURL)disclosureURL
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  swift_beginAccess();
  sub_1C1AA7E30(self + v7, v6, &qword_1EBF07AC8, &qword_1C1B9CED0);
  v8 = sub_1C1B944A8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1C1B94478();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setDisclosureURL:(id)l
{
  v5 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (l)
  {
    sub_1C1B94488();
    v9 = sub_1C1B944A8();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1C1B944A8();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  swift_beginAccess();
  selfCopy = self;
  sub_1C1B19384(v8, self + v11, &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
}

- (int64_t)minimumTimeBetweenPresentation
{
  v3 = OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMinimumTimeBetweenPresentation:(int64_t)presentation
{
  v5 = OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation;
  swift_beginAccess();
  *(self + v5) = presentation;
}

- (NSArray)representations
{
  v3 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v4 = *(self + v3);

  sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
  v5 = sub_1C1B94EB8();

  return v5;
}

- (void)setRepresentations:(id)representations
{
  sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
  v4 = sub_1C1B94EC8();
  v5 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (APInstallAttribution)installAttribution
{
  v3 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  swift_beginAccess();
  return *(self + v3);
}

- (NSError)error
{
  v3 = OBJC_IVAR___APPCPromotedContent_error;
  swift_beginAccess();
  return *(self + v3);
}

- (NSDate)expirationDate
{
  v3 = sub_1C1B94588();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9 = sub_1C1B94538();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)setExpirationDate:(id)date
{
  v4 = sub_1C1B94588();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B94558();
  v9 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  v10 = *(v5 + 40);
  selfCopy = self;
  v10(self + v9, v8, v4);
  swift_endAccess();
}

- (void)setServerUnfilledReason:(int64_t)reason
{
  v5 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  *(self + v5) = reason;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setUnfilledReason_];
    swift_unknownObjectRelease();
  }
}

- (BOOL)attachedToView
{
  v3 = OBJC_IVAR___APPCPromotedContent_attachedToView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAttachedToView:(BOOL)view
{
  v5 = OBJC_IVAR___APPCPromotedContent_attachedToView;
  swift_beginAccess();
  *(self + v5) = view;
}

- (BOOL)vended
{
  v3 = OBJC_IVAR___APPCPromotedContent_vended;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDiscarded:(BOOL)discarded
{
  v5 = OBJC_IVAR___APPCPromotedContent_discarded;
  swift_beginAccess();
  *(self + v5) = discarded;
}

- (BOOL)consumed
{
  v3 = OBJC_IVAR___APPCPromotedContent_consumed;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConsumed:(BOOL)consumed
{
  v5 = OBJC_IVAR___APPCPromotedContent_consumed;
  swift_beginAccess();
  *(self + v5) = consumed;
}

- (double)impressionThreshold
{
  v3 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setImpressionThreshold:(double)threshold
{
  v5 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  swift_beginAccess();
  *(self + v5) = threshold;
}

- (BOOL)discardedDueToPolicy
{
  v3 = OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDiscardedDueToPolicy:(BOOL)policy
{
  v5 = OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy;
  swift_beginAccess();
  *(self + v5) = policy;
}

- (NSDate)receivedReferenceTime
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  sub_1C1AA7E30(self + OBJC_IVAR___APPCPromotedContent_receivedReferenceTime, &v13 - v5, &qword_1EBF07F50, &qword_1C1B9A590);
  v7 = sub_1C1B94588();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1C1B94538();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (NSArray)adServerEnvironments
{
  if (*(self + OBJC_IVAR___APPCPromotedContent_adServerEnvironments))
  {
    v2 = *(self + OBJC_IVAR___APPCPromotedContent_adServerEnvironments);

    v3 = sub_1C1B94EB8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)numOfArticlesSinceInterstitial
{
  selfCopy = self;
  v3 = sub_1C1B6AC28();

  return v3;
}

- (NSUUID)contextIdentifier
{
  v3 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_1C1B6ADBC(v6);

  v8 = sub_1C1B945F8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1C1B945B8();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (BOOL)available
{
  selfCopy = self;
  v3 = sub_1C1B6B010();

  return v3 & 1;
}

- (NSDictionary)transparencyDetailsDictionary
{
  selfCopy = self;
  sub_1C1B6B224();

  v3 = sub_1C1B94CA8();

  return v3;
}

- (int64_t)feedMetadataContentProviderID
{
  selfCopy = self;
  v3 = sub_1C1B6B5A4();

  return v3;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1C1B6B9B8();

  v3 = sub_1C1B94D78();

  return v3;
}

- (unint64_t)retrieveNetworkType
{
  selfCopy = self;
  v3 = sub_1C1AB2120();

  return v3;
}

- (void)registerPromotedContentUsedWithAction:(id)action
{
  v4 = _Block_copy(action);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C1B7B2E8;
  *(v6 + 24) = v5;
  v7 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
  swift_beginAccess();
  v8 = *(self + v7);
  selfCopy = self;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(self + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1C1ACE190(0, v8[2] + 1, 1, v8);
    *(self + v7) = v8;
  }

  v12 = v8[2];
  v11 = v8[3];
  if (v12 >= v11 >> 1)
  {
    v8 = sub_1C1ACE190((v11 > 1), v12 + 1, 1, v8);
  }

  v8[2] = v12 + 1;
  v13 = &v8[2 * v12];
  v13[4] = sub_1C1B7B4D0;
  v13[5] = v6;
  *(self + v7) = v8;
  swift_endAccess();
}

- (void)notifyListenersPCUsedWithPcID:(id)d
{
  v4 = sub_1C1B94D88();
  v6 = v5;
  selfCopy = self;
  sub_1C1B74618(v4, v6);
}

- (APPCPromotedContent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end