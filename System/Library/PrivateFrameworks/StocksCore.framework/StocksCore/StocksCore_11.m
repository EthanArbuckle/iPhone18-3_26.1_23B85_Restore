uint64_t sub_1DAB5B5DC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[5];
  v6 = a1[7];
  v14 = a1[4];
  v15 = a1[6];
  v7 = a1[9];
  v16 = a1[8];
  v17 = a1[10];
  v12 = *a1;
  v13 = a1[11];
  sub_1DAB5B568();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC4A00;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v9 = MEMORY[0x1E69E6158];
  sub_1DACB9C14();
  *(inited + 96) = v9;
  *(inited + 72) = v4;
  *(inited + 80) = v3;
  sub_1DACB9C14();
  *(inited + 168) = v9;
  *(inited + 144) = v12;
  *(inited + 152) = v2;
  sub_1DACB9C14();
  *(inited + 240) = v9;
  *(inited + 216) = v14;
  *(inited + 224) = v5;
  sub_1DACB9C14();
  *(inited + 312) = v9;
  *(inited + 288) = v15;
  *(inited + 296) = v6;
  sub_1DACB9C14();
  *(inited + 384) = v9;
  *(inited + 360) = v16;
  *(inited + 368) = v7;
  sub_1DACB9C14();
  *(inited + 456) = v9;
  *(inited + 432) = v17;
  *(inited + 440) = v13;
  v10 = sub_1DAB68448(inited);
  swift_setDeallocating();
  sub_1DAB6A54C(0, &qword_1EE11F770);
  result = swift_arrayDestroy();
  *a2 = v10;
  return result;
}

void NewsCoreConfiguration.analyticsEnvelopeContentTypeConfigs(for:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations);
  v3 = sub_1DAB5B9B0(a1);
  sub_1DAA61D24(v2, v3, v4, v8);

  v5 = sub_1DACB92F4();
  v6 = sub_1DACB92F4();
  v7 = FCAnalyticsEnvelopeContentTypeConfigsByContentType();

  if (v7)
  {
    sub_1DAB68598(v8);
    sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
    sub_1DAA420F4(0, &qword_1EE126620, 0x1E69B6CE0);
    sub_1DAB685EC();
    sub_1DACB9124();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DAB5B9B0(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x474E4947415453;
      }

      if (a1 == 3)
      {
        return 16721;
      }

      return 1414743380;
    }

    if (a1 == 1)
    {
      return 0x49544355444F5250;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0x584F42444E4153;
      case 8:
        return 0x314F4D4544;
      case 9:
        return 0x324F4D4544;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 == 5)
  {
    return 0x3144554F4C4349;
  }

  else
  {
    return 0x4C45564544;
  }
}

uint64_t NewsCoreConfiguration.personalizationTreatment()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPersonalizationTreatment);
  sub_1DACB88F4();
  return v3;
}

id NewsCoreConfiguration.currentTreatment.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v0 initWithInteger_];
}

double NewsCoreConfiguration.endOfArticleMinPaidHeadlineRatio.getter()
{
  result = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3864);
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3872))
  {
    return 0.25;
  }

  return result;
}

uint64_t NewsCoreConfiguration.endOfArticleMaxInaccessiblePaidArticleCount.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3888))
  {
    return 2;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3880);
  }
}

uint64_t NewsCoreConfiguration.endOfArticleExpireArticlesAfter.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3904))
  {
    return 2592000;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3896);
  }
}

double NewsCoreConfiguration.interstitialAdLoadDelay.getter()
{
  result = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3912);
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3920))
  {
    return 1.0;
  }

  return result;
}

double NewsCoreConfiguration.adRequestThrottle.getter()
{
  result = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3928);
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3936))
  {
    return 1.0;
  }

  return result;
}

id NewsCoreConfiguration.notificationsConfig.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B5400]);

  return [v0 init];
}

id NewsCoreConfiguration.embedProxyConfiguration.getter()
{
  v11 = MEMORY[0x1E69E7CC8];
  v1 = (v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4032);
  if (v2 == 1)
  {
    v3 = 0;
    v2 = 0;
  }

  else
  {
    v3 = v1[503];
    v4 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4032);
    sub_1DACB71E4();
  }

  sub_1DAB593A0(v3, v2, 0x736F4879786F7270, 0xE900000000000074);
  if (v1[504] == 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = v1[506];
    v5 = v1[505];
    sub_1DACB71E4();
  }

  sub_1DAB593A0(v5, v6, 0x74754179786F7270, 0xEF6769666E6F436FLL);
  sub_1DAB5A264(v11);

  v7 = objc_allocWithZone(MEMORY[0x1E69B5270]);
  v8 = sub_1DACB9114();

  v9 = [v7 initWithDictionary_];

  return v9;
}

uint64_t NewsCoreConfiguration.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  ObjectType = swift_getObjectType();
  v64 = sub_1DACB81D4();
  v3 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppConfiguration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix + 8);
  v60 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix);
  v62 = v8;
  sub_1DAB697A0(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration, v8, type metadata accessor for AppConfiguration);
  v10 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration);
  v57 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration + 8);
  v58 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration + 16);
  v59 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration + 24);
  v12 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 48);
  v77 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 32);
  v78 = v12;
  v79 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 64);
  v13 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 16);
  v75 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration);
  v76 = v13;
  memcpy(v68, (v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsPersonalizationTreatment), sizeof(v68));
  v14 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations);
  memcpy(v74, (v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleConfiguration), 0x1F9uLL);
  v15 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration + 48);
  v71 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration + 32);
  v72 = v15;
  v73 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration + 64);
  v16 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration + 16);
  v69 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration);
  v70 = v16;
  v56 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_analyticsEndpointMaxPayloadSize);
  v17 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_maxRetriesForDroppedFeeds);
  v18 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_delayBeforeRetryingDroppedFeeds);
  v19 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_enableCacheFallbackForArticleRecirculation);
  v20 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollLoadingTimeout);
  v21 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollReadyToPlayTimeout);
  v22 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_isPrivateDataEncryptionRequired);
  v23 = objc_allocWithZone(ObjectType);
  v24 = &v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix];
  *v24 = v60;
  v24[1] = v9;
  sub_1DAB697A0(v8, &v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration], type metadata accessor for AppConfiguration);
  v25 = &v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration];
  v26 = v58;
  v27 = v57;
  *v25 = v59;
  v25[1] = v27;
  v25[2] = v26;
  v25[3] = v11;
  v28 = &v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration];
  v30 = v77;
  v29 = v78;
  v31 = v76;
  *(v28 + 8) = v79;
  *(v28 + 2) = v30;
  *(v28 + 3) = v29;
  *(v28 + 1) = v31;
  *v28 = v75;
  memcpy(&v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsPersonalizationTreatment], v68, 0x8DBuLL);
  *&v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations] = v14;
  memcpy(&v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleConfiguration], v74, 0x1F9uLL);
  v32 = &v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration];
  *v32 = v69;
  v34 = v71;
  v33 = v72;
  v35 = v70;
  v32[64] = v73;
  *(v32 + 2) = v34;
  *(v32 + 3) = v33;
  *(v32 + 1) = v35;
  *&v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_analyticsEndpointMaxPayloadSize] = v56;
  *&v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_maxRetriesForDroppedFeeds] = v17;
  *&v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_delayBeforeRetryingDroppedFeeds] = v18;
  v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_enableCacheFallbackForArticleRecirculation] = v19;
  *&v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollLoadingTimeout] = v20;
  *&v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollReadyToPlayTimeout] = v21;
  v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_isPrivateDataEncryptionRequired] = v22;
  v36 = swift_allocObject();
  memcpy((v36 + 16), v74, 0x1F9uLL);
  v67[64] = MEMORY[0x1E69E7CC0];
  sub_1DAA4F398(v74, v67);
  sub_1DAA4F3F4(&v69, v67);
  sub_1DAA4F398(v74, v67);
  sub_1DAA4F3F4(&v69, v67);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA4F450(&v75, v67);
  sub_1DAA4F4F4(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
  sub_1DAB5FC04(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1DAA5A834();
  sub_1DACB71E4();
  sub_1DACB9BB4();
  v37 = MEMORY[0x1E69D6A80];
  sub_1DAB5ABC0(0, &unk_1EE11FF20, &unk_1EE11F830, 0x1E69B5428, MEMORY[0x1E69D6A80]);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *&v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleConfig] = sub_1DACB8914();
  v41 = swift_allocObject();
  v42 = v72;
  *(v41 + 48) = v71;
  *(v41 + 64) = v42;
  *(v41 + 80) = v73;
  v43 = v70;
  *(v41 + 16) = v69;
  *(v41 + 32) = v43;
  v67[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF18, &unk_1EE11F820, 0x1E69B5430, v37);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  *&v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleViaOfferConfig] = sub_1DACB8914();
  v47 = swift_allocObject();
  memcpy((v47 + 16), v68, 0x8DBuLL);
  v67[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF10, &unk_1EE11F810, 0x1E69B5480, v37);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  *&v23[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPersonalizationTreatment] = sub_1DACB8914();
  v51 = ObjectType;
  v66.receiver = v23;
  v66.super_class = ObjectType;
  v52 = objc_msgSendSuper2(&v66, sel_init);
  result = sub_1DAA640AC(v62);
  v54 = v63;
  v63[3] = v51;
  *v54 = v52;
  return result;
}

uint64_t NewsCoreConfiguration.embedConfigurationAssetID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 8);
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.webEmbedContentBlockers.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 24);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 32);
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.webEmbedContentBlockerOverrides.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 40);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 48);
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.anfRenderingConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 56);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 64);
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.endOfArticleFeedConfigurationResourceId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 1328);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 1336);
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.userConcernConfigurationResourceId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4112);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4120);
  sub_1DACB71E4();
  return v1;
}

unint64_t NewsCoreConfiguration.configurableOffersMappingResourceId.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4184))
  {
    v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4176);
    v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4184);
  }

  else
  {
    v1 = 0xD000000000000033;
  }

  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.aiAttributionArticleString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4128);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4136);
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.paidBundleConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleConfig);
  sub_1DACB88F4();
  return v3;
}

uint64_t NewsCoreConfiguration.paidBundleViaOfferConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleViaOfferConfig);
  sub_1DACB88F4();
  return v3;
}

id NewsCoreConfiguration.newAdsEnabled.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3952))
  {
    v1 = 2;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3944);
  }

  return [objc_opt_self() enabledForCurrentLevel_];
}

id NewsCoreConfiguration.newsPersonalizationConfiguration.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B53D8]);

  return [v0 init];
}

uint64_t NewsCoreConfiguration.subscriptionsPlacardGlobalMaximumPerDay.getter()
{
  result = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3968);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NewsCoreConfiguration.subscriptionsPlacardPublisherFrequencyInSeconds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3960);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t NewsCoreConfiguration.subscriptionsGracePeriodForTokenVerificationSeconds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3976);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

void NewsCoreConfiguration.iAdConfig.getter()
{
  sub_1DAA420F4(0, &qword_1EE11D0A0, 0x1E69B5340);
  v1[0] = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 1568);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 1576);
  sub_1DAAF671C(v1);
}

id NewsCoreConfiguration.puzzlesConfig.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B5550]);

  return [v0 init];
}

unint64_t NewsCoreConfiguration.articleConfig.getter()
{
  v1 = v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration;
  v2 = type metadata accessor for AppConfiguration(0);
  if (!*(v1 + *(v2 + 544)))
  {
    return sub_1DAB68448(MEMORY[0x1E69E7CC0]);
  }

  v6 = *(v1 + *(v2 + 544));
  sub_1DAA7C3AC(0, &qword_1EE123FE8, MEMORY[0x1E69D6A58], MEMORY[0x1E69E5E28]);
  sub_1DAB68654();
  v3 = sub_1DACB91D4();
  if (!v3)
  {
    return sub_1DAB68448(MEMORY[0x1E69E7CC0]);
  }

  v4 = sub_1DAA55EB0(v3);

  return v4;
}

void sub_1DAB5FC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_1DAB5FC68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DAA4BF3C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DAB658E0();
      v12 = v19;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 48 * v9;
    v15 = *(v14 + 24);
    v16 = *(v14 + 32);
    v17 = *(v14 + 40);
    *a3 = *v14;
    *(a3 + 8) = *(v14 + 8);
    *(a3 + 24) = v15;
    *(a3 + 32) = v16;
    *(a3 + 40) = v17;
    sub_1DAB6493C(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *(a3 + 26) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DAB5FD2C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_1DAB09598(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1DAB64B0C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1DAB65AA0();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1DACB9E24();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  sub_1DACB71E4();
  v7 = sub_1DACB9E14();
  v8 = sub_1DAB6012C(v4, v7);
  sub_1DACB71F4();
  v9 = sub_1DAB09598(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1DAB64B0C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1DAB5FECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_1DAA4BF3C(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = a3(0);
    v30 = *(v23 - 8);
    sub_1DAA7C55C(v22 + *(v30 + 72) * v17, a7, a4);
    sub_1DAB64CB0(v17, v20, a5);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a3(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

double sub_1DAB60050@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DAB09820(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DAB67A90();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_1DACB9DF4();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_1DAA5616C((*(v11 + 56) + 32 * v8), a2);
    sub_1DAB64EA4(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1DAB6012C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1DAB6A44C();
    v2 = sub_1DACB9E94();
    v20 = v2;
    sub_1DACB9E04();
    v3 = sub_1DACB9E34();
    if (v3)
    {
      v4 = v3;
      sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1DAA420F4(0, &unk_1EE11F840, 0x1E69B5278);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1DAB60A14(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1DACB9A94();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1DACB9E34();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DAB603A0(uint64_t a1, char a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_1DAB698C4(0, a3, a4, a5, sub_1DAA485B8);
  v41 = a2;
  result = sub_1DACB9E84();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v6;
    v40 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v8 + 56) + 8 * v24);
      if ((v41 & 1) == 0)
      {
        v29 = v25[1];
        sub_1DACB71E4();
        swift_unknownObjectRetain();
      }

      v30 = *(v11 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v11 + 56) + 8 * v19) = v28;
      ++*(v11 + 16);
      v8 = v40;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v6 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v8 + 32);
    v6 = v39;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

uint64_t sub_1DAB6065C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for QuoteDetail();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1DAA7C3AC(0, &qword_1EE11F728, type metadata accessor for QuoteDetail, MEMORY[0x1E69E6EC8]);
  v44 = a2;
  result = sub_1DACB9E84();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DAA7C55C(v31, v45, type metadata accessor for QuoteDetail);
      }

      else
      {
        sub_1DAB697A0(v31, v45, type metadata accessor for QuoteDetail);
        sub_1DACB71E4();
      }

      v32 = *(v12 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DAA7C55C(v45, *(v12 + 56) + v30 * v20, type metadata accessor for QuoteDetail);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DAB60A14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAB6A44C();
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_1DACB9A94();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1DAB60C70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAB6A3B4();
  v63 = a2;
  v7 = sub_1DACB9E84();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v59 = v3;
    v60 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 64;
    v61 = v7;
    v62 = v5;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v20 = (v12 - 1) & v12;
LABEL_17:
      v24 = v19 | (v9 << 6);
      v67 = v20;
      if (v63)
      {
        v25 = *(v5 + 56);
        v26 = *(v5 + 48) + 136 * v24;
        v28 = *v26;
        v27 = *(v26 + 8);
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        v31 = *(v26 + 40);
        v69 = *(v26 + 32);
        v68 = *(v26 + 48);
        v70 = *(v26 + 56);
        v32 = *(v26 + 64);
        v33 = *(v26 + 120);
        v34 = *(v26 + 104);
        v73 = *(v26 + 80);
        v71 = *(v26 + 72);
        v72 = *(v26 + 96);
        v66 = *(v25 + 8 * v24);
      }

      else
      {
        v35 = *(v5 + 48) + 136 * v24;
        v37 = *(v35 + 16);
        v36 = *(v35 + 32);
        v38 = *(v35 + 64);
        v82 = *(v35 + 48);
        v83 = v38;
        v39 = *(v35 + 80);
        v40 = *(v35 + 96);
        v41 = *(v35 + 112);
        *&v85[32] = *(v35 + 128);
        *v85 = v40;
        *&v85[16] = v41;
        v84 = v39;
        v79 = *v35;
        v80 = v37;
        v81 = v36;
        v42 = *(*(v5 + 56) + 8 * v24);
        v74 = *&v85[8];
        v76 = *&v85[24];
        v71 = *(&v83 + 1);
        v72 = v40;
        v73 = v39;
        v64 = v83;
        v70 = *(&v82 + 1);
        v43 = *(&v36 + 1);
        v68 = v82;
        v69 = v36;
        v45 = *(&v37 + 1);
        v44 = v37;
        v27 = *(&v79 + 1);
        v28 = v79;
        sub_1DAA806E4(&v79, v78);
        v66 = v42;
        v31 = v43;
        v30 = v44;
        v8 = v61;
        sub_1DACB71E4();
        v29 = v45;
        v32 = v64;
        v34 = v74;
        v33 = v76;
      }

      v46 = *(v8 + 40);
      v65 = v28;
      *&v79 = v28;
      *(&v79 + 1) = v27;
      v47 = v30;
      *&v80 = v30;
      *(&v80 + 1) = v29;
      v48 = v29;
      *&v81 = v69;
      *(&v81 + 1) = v31;
      v49 = v31;
      *&v82 = v68;
      *(&v82 + 1) = v70;
      v50 = v32;
      LOBYTE(v83) = v32;
      *(&v83 + 1) = v71;
      v84 = v73;
      *v85 = v72;
      v75 = v34;
      v77 = v33;
      *&v85[8] = v34;
      *&v85[24] = v33;
      sub_1DACBA284();
      sub_1DAB08BD4();
      result = sub_1DACBA2C4();
      v51 = -1 << *(v8 + 32);
      v52 = result & ~v51;
      v53 = v52 >> 6;
      if (((-1 << v52) & ~*(v14 + 8 * (v52 >> 6))) == 0)
      {
        v54 = 0;
        v55 = (63 - v51) >> 6;
        v17 = v75;
        v16 = v77;
        while (++v53 != v55 || (v54 & 1) == 0)
        {
          v56 = v53 == v55;
          if (v53 == v55)
          {
            v53 = 0;
          }

          v54 |= v56;
          v57 = *(v14 + 8 * v53);
          if (v57 != -1)
          {
            v15 = __clz(__rbit64(~v57)) + (v53 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v52) & ~*(v14 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
      v17 = v75;
      v16 = v77;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v8 + 48) + 136 * v15;
      *v18 = v65;
      *(v18 + 8) = v27;
      *(v18 + 16) = v47;
      *(v18 + 24) = v48;
      *(v18 + 32) = v69;
      *(v18 + 40) = v49;
      *(v18 + 48) = v68;
      *(v18 + 56) = v70;
      *(v18 + 64) = v50;
      *(v18 + 72) = v71;
      *(v18 + 80) = v73;
      *(v18 + 96) = v72;
      *(v18 + 120) = v16;
      *(v18 + 104) = v17;
      *(*(v8 + 56) + 8 * v15) = v66;
      ++*(v8 + 16);
      v5 = v62;
      v12 = v67;
    }

    v21 = v9;
    result = v60;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v13)
      {
        break;
      }

      v23 = v60[v9];
      ++v21;
      if (v23)
      {
        v19 = __clz(__rbit64(v23));
        v20 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v63 & 1) == 0)
    {

      v3 = v59;
      goto LABEL_36;
    }

    v58 = 1 << *(v5 + 32);
    v3 = v59;
    if (v58 >= 64)
    {
      bzero(v60, ((v58 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v60 = -1 << v58;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAB610B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAB6A354();
  v35 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      sub_1DAB5916C(*(v5 + 56) + 136 * v21, v36);
      if ((v35 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DAB59344(v36, v37);
      }

      sub_1DAB5916C(v36, v37);
      v25 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1DAB5916C(v37, *(v8 + 56) + 136 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAB61390(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAB69808();
  v42 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 104 * v22;
      if (v42)
      {
        v43 = *(v26 + 8);
        v44 = *(v26 + 24);
        v45 = *v26;
        v46 = *(v26 + 32);
        v47 = *(v26 + 48);
        v48 = *(v26 + 16);
        v49 = *(v26 + 72);
        v51 = *(v26 + 80);
        v52 = *(v26 + 64);
        v53 = *(v26 + 88);
        v50 = *(v26 + 96);
      }

      else
      {
        v28 = *(v26 + 16);
        v27 = *(v26 + 32);
        v55 = *v26;
        v56 = v28;
        v57 = v27;
        v30 = *(v26 + 64);
        v29 = *(v26 + 80);
        v31 = *(v26 + 48);
        v61 = *(v26 + 96);
        v59 = v30;
        v60 = v29;
        v58 = v31;
        v50 = v61;
        v51 = v29;
        v52 = v30;
        v53 = *(&v29 + 1);
        v49 = *(&v30 + 1);
        v46 = v57;
        v47 = v31;
        v44 = *(&v56 + 1);
        v48 = v56;
        v43 = *(&v55 + 1);
        v45 = v55;
        sub_1DACB71E4();
        sub_1DAB69868(&v55, v54);
      }

      v32 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 104 * v16;
      *v18 = v45;
      *(v18 + 8) = v43;
      *(v18 + 16) = v48;
      *(v18 + 24) = v44;
      *(v18 + 32) = v46;
      *(v18 + 48) = v47;
      *(v18 + 64) = v52;
      *(v18 + 72) = v49;
      *(v18 + 80) = v51;
      *(v18 + 88) = v53;
      *(v18 + 96) = v50;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAB61740(uint64_t a1, char a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_1DAB698C4(0, a3, a4, a5, sub_1DAA488A4);
  v41 = a2;
  result = sub_1DACB9E84();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v6;
    v40 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v8 + 56) + 8 * v24);
      if ((v41 & 1) == 0)
      {
        v29 = v25[1];
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      v30 = *(v11 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v11 + 56) + 8 * v19) = v28;
      ++*(v11 + 16);
      v8 = v40;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v6 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v8 + 32);
    v6 = v39;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

uint64_t sub_1DAB619FC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for EarningsCalendarEventModel();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1DAA7C3AC(0, &qword_1ECBE7DE8, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6EC8]);
  v44 = a2;
  result = sub_1DACB9E84();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DAA7C55C(v31, v45, type metadata accessor for EarningsCalendarEventModel);
      }

      else
      {
        sub_1DAB697A0(v31, v45, type metadata accessor for EarningsCalendarEventModel);
        sub_1DACB71E4();
      }

      v32 = *(v12 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DAA7C55C(v45, *(v12 + 56) + v30 * v20, type metadata accessor for EarningsCalendarEventModel);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DAB61DD0(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1DAB699E0(0, a3, a4);
  v65 = a2;
  v9 = sub_1DACB9E84();
  v10 = v9;
  if (*(v7 + 16))
  {
    v11 = 0;
    v61 = v5;
    v62 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v9 + 64;
    v63 = v9;
    v64 = v7;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v22 = (v14 - 1) & v14;
LABEL_17:
      v26 = v21 | (v11 << 6);
      v69 = v22;
      if (v65)
      {
        v27 = *(v7 + 56);
        v28 = *(v7 + 48) + 136 * v26;
        v30 = *v28;
        v29 = *(v28 + 8);
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        v33 = *(v28 + 40);
        v71 = *(v28 + 32);
        v70 = *(v28 + 48);
        v72 = *(v28 + 56);
        v34 = *(v28 + 64);
        v35 = *(v28 + 120);
        v36 = *(v28 + 104);
        v75 = *(v28 + 80);
        v73 = *(v28 + 72);
        v74 = *(v28 + 96);
        v68 = *(v27 + 8 * v26);
      }

      else
      {
        v37 = *(v7 + 48) + 136 * v26;
        v39 = *(v37 + 16);
        v38 = *(v37 + 32);
        v40 = *(v37 + 64);
        v84 = *(v37 + 48);
        v85 = v40;
        v41 = *(v37 + 80);
        v42 = *(v37 + 96);
        v43 = *(v37 + 112);
        *&v87[32] = *(v37 + 128);
        *v87 = v42;
        *&v87[16] = v43;
        v86 = v41;
        v81 = *v37;
        v82 = v39;
        v83 = v38;
        v44 = *(*(v7 + 56) + 8 * v26);
        v76 = *&v87[8];
        v78 = *&v87[24];
        v73 = *(&v85 + 1);
        v74 = v42;
        v75 = v41;
        v66 = v85;
        v72 = *(&v84 + 1);
        v45 = *(&v38 + 1);
        v70 = v84;
        v71 = v38;
        v47 = *(&v39 + 1);
        v46 = v39;
        v29 = *(&v81 + 1);
        v30 = v81;
        sub_1DAA806E4(&v81, v80);
        v68 = v44;
        v33 = v45;
        v32 = v46;
        v10 = v63;
        sub_1DACB71E4();
        v31 = v47;
        v34 = v66;
        v36 = v76;
        v35 = v78;
      }

      v48 = *(v10 + 40);
      v67 = v30;
      *&v81 = v30;
      *(&v81 + 1) = v29;
      v49 = v32;
      *&v82 = v32;
      *(&v82 + 1) = v31;
      v50 = v31;
      *&v83 = v71;
      *(&v83 + 1) = v33;
      v51 = v33;
      *&v84 = v70;
      *(&v84 + 1) = v72;
      v52 = v34;
      LOBYTE(v85) = v34;
      *(&v85 + 1) = v73;
      v86 = v75;
      *v87 = v74;
      v77 = v36;
      v79 = v35;
      *&v87[8] = v36;
      *&v87[24] = v35;
      sub_1DACBA284();
      sub_1DAB08BD4();
      result = sub_1DACBA2C4();
      v53 = -1 << *(v10 + 32);
      v54 = result & ~v53;
      v55 = v54 >> 6;
      if (((-1 << v54) & ~*(v16 + 8 * (v54 >> 6))) == 0)
      {
        v56 = 0;
        v57 = (63 - v53) >> 6;
        v19 = v77;
        v18 = v79;
        while (++v55 != v57 || (v56 & 1) == 0)
        {
          v58 = v55 == v57;
          if (v55 == v57)
          {
            v55 = 0;
          }

          v56 |= v58;
          v59 = *(v16 + 8 * v55);
          if (v59 != -1)
          {
            v17 = __clz(__rbit64(~v59)) + (v55 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v54) & ~*(v16 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
      v19 = v77;
      v18 = v79;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v20 = *(v10 + 48) + 136 * v17;
      *v20 = v67;
      *(v20 + 8) = v29;
      *(v20 + 16) = v49;
      *(v20 + 24) = v50;
      *(v20 + 32) = v71;
      *(v20 + 40) = v51;
      *(v20 + 48) = v70;
      *(v20 + 56) = v72;
      *(v20 + 64) = v52;
      *(v20 + 72) = v73;
      *(v20 + 80) = v75;
      *(v20 + 96) = v74;
      *(v20 + 120) = v18;
      *(v20 + 104) = v19;
      *(*(v10 + 56) + 8 * v17) = v68;
      ++*(v10 + 16);
      v7 = v64;
      v14 = v69;
    }

    v23 = v11;
    result = v62;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v11 >= v15)
      {
        break;
      }

      v25 = v62[v11];
      ++v23;
      if (v25)
      {
        v21 = __clz(__rbit64(v25));
        v22 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v65 & 1) == 0)
    {

      v5 = v61;
      goto LABEL_36;
    }

    v60 = 1 << *(v7 + 32);
    v5 = v61;
    if (v60 >= 64)
    {
      bzero(v62, ((v60 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v62 = -1 << v60;
    }

    *(v7 + 16) = 0;
  }

LABEL_36:
  *v5 = v10;
  return result;
}

uint64_t sub_1DAB6221C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAB698C4(0, &unk_1EE11CFE0, &unk_1EE11D048, 0x1E69B52B8, sub_1DAA420F4);
  v39 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];
        sub_1DACB71E4();
        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAB624E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAB69A54();
  v39 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v27 = *(v26 + 8);
      v41 = *v26;
      v40 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      v28 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v41;
      *(v18 + 8) = v27;
      *(v18 + 16) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAB627A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAB6A108();
  v41 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v23 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v26 = v23 | (v9 << 6);
      v27 = (*(v5 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      if (v41)
      {
        v30 = *(v5 + 56) + 776 * v26;
        v52 = *(v30 + 16);
        v53 = *(v30 + 32);
        v54 = *(v30 + 48);
        v55 = *(v30 + 64);
        v51 = *v30;
        v42 = *(v30 + 72);
        v43 = *(v30 + 88);
        memcpy(__src, (v30 + 104), sizeof(__src));
        v44 = *(v30 + 688);
        v45 = *(v30 + 704);
        v49 = *(v30 + 720);
        v46 = *(v30 + 728);
        v48 = *(v30 + 736);
        v50 = *(v30 + 760);
        v47 = *(v30 + 744);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 776 * v26), sizeof(__dst));
        v50 = *&__dst[760];
        v47 = *&__dst[744];
        v48 = __dst[736];
        v49 = *&__dst[720];
        v46 = *&__dst[728];
        v44 = *&__dst[688];
        v45 = *&__dst[704];
        v42 = *&__dst[72];
        v43 = *&__dst[88];
        sub_1DACB71E4();
        sub_1DAAE8548(__dst, &v51);
        v53 = *&__dst[32];
        v54 = *&__dst[48];
        v55 = __dst[64];
        v51 = *__dst;
        v52 = *&__dst[16];
        memcpy(__src, &__dst[104], sizeof(__src));
      }

      v31 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      __dst[64] = v55;
      v17 = v53;
      v18 = v54;
      *&__dst[32] = v53;
      *&__dst[48] = v54;
      v20 = v51;
      v19 = v52;
      *__dst = v51;
      *&__dst[16] = v52;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v21 = (*(v8 + 48) + 16 * v16);
      *v21 = v28;
      v21[1] = v29;
      v22 = *(v8 + 56) + 776 * v16;
      *v22 = v20;
      *(v22 + 64) = *&__dst[64];
      *(v22 + 32) = v17;
      *(v22 + 48) = v18;
      *(v22 + 16) = v19;
      *(v22 + 88) = v43;
      *(v22 + 72) = v42;
      result = memcpy((v22 + 104), __src, 0x248uLL);
      *(v22 + 688) = v44;
      *(v22 + 704) = v45;
      *(v22 + 720) = v49;
      *(v22 + 728) = v46;
      *(v22 + 736) = v48;
      *(v22 + 744) = v47;
      *(v22 + 760) = v50;
      ++*(v8 + 16);
    }

    v24 = v9;
    while (1)
    {
      v9 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v25 = v10[v9];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v13 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAB62BD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAB6A04C();
  v40 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 72 * v22;
      if (v40)
      {
        v41 = *(v26 + 8);
        v46 = *(v26 + 16);
        v42 = *(v26 + 24);
        v43 = *v26;
        v45 = *(v26 + 32);
        v47 = *(v26 + 56);
        v44 = *(v26 + 40);
      }

      else
      {
        v27 = *(v26 + 16);
        v28 = *(v26 + 32);
        v29 = *(v26 + 48);
        *&v50[32] = *(v26 + 64);
        *v50 = v28;
        *&v50[16] = v29;
        v49[1] = v27;
        v49[0] = *v26;
        v47 = *&v50[24];
        v44 = *&v50[8];
        v45 = v28;
        v42 = *(&v27 + 1);
        v46 = v27;
        v41 = *(&v49[0] + 1);
        v43 = *&v49[0];
        sub_1DACB71E4();
        sub_1DAB6A0AC(v49, v48);
      }

      v30 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 72 * v16;
      *v18 = v43;
      *(v18 + 8) = v41;
      *(v18 + 16) = v46;
      *(v18 + 24) = v42;
      *(v18 + 32) = v45;
      *(v18 + 56) = v47;
      *(v18 + 40) = v44;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAB62F30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAB69FEC();
  v39 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v27 = *(v26 + 8);
      v41 = *v26;
      v40 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      v28 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v41;
      *(v18 + 8) = v27;
      *(v18 + 16) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAB631F4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for YahooMultiQuoteItem(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1DAA7C3AC(0, &qword_1EE126630, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E6EC8]);
  v44 = a2;
  result = sub_1DACB9E84();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DAA7C55C(v31, v45, type metadata accessor for YahooMultiQuoteItem);
      }

      else
      {
        sub_1DAB697A0(v31, v45, type metadata accessor for YahooMultiQuoteItem);
        sub_1DACB71E4();
      }

      v32 = *(v12 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DAA7C55C(v45, *(v12 + 56) + v30 * v20, type metadata accessor for YahooMultiQuoteItem);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DAB63590(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAB69AB4();
  v38 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      v27 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAB6382C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SDSAuthToken();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB7AB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_1DAB6A168();
  v48 = a2;
  result = sub_1DACB9E84();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1DAA7C55C(v31 + v32 * v28, v52, type metadata accessor for SDSAuthToken);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1DAB697A0(v33 + v32 * v28, v52, type metadata accessor for SDSAuthToken);
      }

      v34 = *(v16 + 40);
      sub_1DAA4F4F4(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
      result = sub_1DACB91E4();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_1DAA7C55C(v52, *(v16 + 56) + v32 * v24, type metadata accessor for SDSAuthToken);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1DAB63CC0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1DACB9DF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1DAB69BA4();
  v43 = a2;
  result = sub_1DACB9E84();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_1DAA5616C((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_1DAA7C694(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_1DACB91E4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_1DAA5616C(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1DAB64054(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for LanguageConfig(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1DAA7C3AC(0, &unk_1EE123D20, type metadata accessor for LanguageConfig, MEMORY[0x1E69E6EC8]);
  v44 = a2;
  result = sub_1DACB9E84();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DAA7C55C(v31, v45, type metadata accessor for LanguageConfig);
      }

      else
      {
        sub_1DAB697A0(v31, v45, type metadata accessor for LanguageConfig);
        sub_1DACB71E4();
      }

      v32 = *(v12 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DAA7C55C(v45, *(v12 + 56) + v30 * v20, type metadata accessor for LanguageConfig);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DAB643F0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for YahooQuoteDetailItem(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1DAA7C3AC(0, &qword_1EE126628, type metadata accessor for YahooQuoteDetailItem, MEMORY[0x1E69E6EC8]);
  v44 = a2;
  result = sub_1DACB9E84();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DAA7C55C(v31, v45, type metadata accessor for YahooQuoteDetailItem);
      }

      else
      {
        sub_1DAB697A0(v31, v45, type metadata accessor for YahooQuoteDetailItem);
        sub_1DACB71E4();
      }

      v32 = *(v12 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DAA7C55C(v45, *(v12 + 56) + v30 * v20, type metadata accessor for YahooQuoteDetailItem);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DAB6478C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DACB9BD4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      v13 = sub_1DACBA2C4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DAB6493C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DACB9BD4() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      v15 = sub_1DACBA2C4();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (48 * v3 < (48 * v6) || v21 >= v22 + 3 || v3 != v6)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DAB64B0C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DACB9BD4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1DACB9A94();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_1DAB64CB0(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1DACB9BD4() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      v15 = sub_1DACBA2C4();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DAB64EA4(int64_t a1, uint64_t a2)
{
  v4 = sub_1DACB9DF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1DACB9BD4();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_1DACB91E4();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1DAB65190(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1DAB698C4(0, a1, a2, a3, sub_1DAA485B8);
  v5 = *v3;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;
        sub_1DACB71E4();
        result = swift_unknownObjectRetain();
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1DAB65314()
{
  v1 = v0;
  sub_1DAA4BEE0();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_1DACB71E4();
        result = sub_1DACB71E4();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB65480()
{
  v1 = v0;
  v2 = type metadata accessor for QuoteDetail();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &qword_1EE11F728, type metadata accessor for QuoteDetail, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1DAB697A0(*(v5 + 56) + v27, v31, type metadata accessor for QuoteDetail);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DAA7C55C(v26, *(v28 + 56) + v27, type metadata accessor for QuoteDetail);
        result = sub_1DACB71E4();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1DAB656FC()
{
  v1 = v0;
  sub_1DAA80BE4();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DAA806E4(&v37, v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 136;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 16);
      v22 = *(v21 + 32);
      v24 = *(v21 + 64);
      v40 = *(v21 + 48);
      v41 = v24;
      v26 = *(v21 + 96);
      v25 = *(v21 + 112);
      v27 = *(v21 + 80);
      v45 = *(v21 + 128);
      v43 = v26;
      v44 = v25;
      v42 = v27;
      v37 = *v21;
      v38 = v23;
      v39 = v22;
      v28 = (*(v4 + 48) + v17);
      *v28 = v20;
      v28[1] = v19;
      v29 = *(v4 + 56) + v16;
      *v29 = v37;
      v30 = v38;
      v31 = v39;
      v32 = v41;
      *(v29 + 48) = v40;
      *(v29 + 64) = v32;
      *(v29 + 16) = v30;
      *(v29 + 32) = v31;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      *(v29 + 128) = v45;
      *(v29 + 96) = v34;
      *(v29 + 112) = v35;
      *(v29 + 80) = v33;
      sub_1DACB71E4();
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB658E0()
{
  v1 = v0;
  sub_1DAA74DF8();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v26 = *(v22 + 16);
        v25 = *(v22 + 24);
        v27 = *(v22 + 32);
        LOWORD(v22) = *(v22 + 40);
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v26;
        *(v29 + 24) = v25;
        *(v29 + 32) = v27;
        *(v29 + 40) = v22;
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        result = sub_1DACB71E4();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1DAB65AA0()
{
  v1 = v0;
  sub_1DAB6A44C();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB65BF4()
{
  v1 = v0;
  sub_1DAB6A3B4();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DACB71E4())
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = (*(v2 + 48) + 136 * v16);
      v19 = v17[1];
      v18 = v17[2];
      v20 = v17[4];
      v26[3] = v17[3];
      v26[4] = v20;
      v21 = v17[5];
      v22 = v17[6];
      v23 = v17[7];
      v27 = *(v17 + 16);
      v26[6] = v22;
      v26[7] = v23;
      v26[5] = v21;
      v26[0] = *v17;
      v26[1] = v19;
      v26[2] = v18;
      v24 = *(*(v2 + 56) + 8 * v16);
      memmove((*(v4 + 48) + 136 * v16), v17, 0x88uLL);
      *(*(v4 + 56) + 8 * v16) = v24;
      sub_1DAA806E4(v26, v25);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB65DAC()
{
  v1 = v0;
  sub_1DAB6A354();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 136 * v17;
        sub_1DAB5916C(*(v2 + 56) + 136 * v17, v26);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DAB5916C(v26, *(v4 + 56) + v22);
        sub_1DACB71E4();
        result = sub_1DAB59344(v26, v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1DAB65F54()
{
  v1 = v0;
  sub_1DAA82848();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DAB69984(&v37, v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 136;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 16);
      v22 = *(v21 + 32);
      v24 = *(v21 + 64);
      v40 = *(v21 + 48);
      v41 = v24;
      v26 = *(v21 + 96);
      v25 = *(v21 + 112);
      v27 = *(v21 + 80);
      v45 = *(v21 + 128);
      v43 = v26;
      v44 = v25;
      v42 = v27;
      v37 = *v21;
      v38 = v23;
      v39 = v22;
      v28 = (*(v4 + 48) + v17);
      *v28 = v20;
      v28[1] = v19;
      v29 = *(v4 + 56) + v16;
      *v29 = v37;
      v30 = v38;
      v31 = v39;
      v32 = v41;
      *(v29 + 48) = v40;
      *(v29 + 64) = v32;
      *(v29 + 16) = v30;
      *(v29 + 32) = v31;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      *(v29 + 128) = v45;
      *(v29 + 96) = v34;
      *(v29 + 112) = v35;
      *(v29 + 80) = v33;
      sub_1DACB71E4();
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB66138()
{
  v1 = v0;
  sub_1DAB69808();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DAB69868(&v35, v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 104;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 64);
      v22 = *(v21 + 80);
      v24 = *(v21 + 48);
      v41 = *(v21 + 96);
      v39 = v23;
      v40 = v22;
      v38 = v24;
      v26 = *(v21 + 16);
      v25 = *(v21 + 32);
      v35 = *v21;
      v36 = v26;
      v37 = v25;
      v27 = (*(v4 + 48) + v17);
      *v27 = v20;
      v27[1] = v19;
      v28 = *(v4 + 56) + v16;
      v29 = v35;
      v30 = v37;
      *(v28 + 16) = v36;
      *(v28 + 32) = v30;
      *v28 = v29;
      v31 = v38;
      v32 = v39;
      v33 = v40;
      *(v28 + 96) = v41;
      *(v28 + 64) = v32;
      *(v28 + 80) = v33;
      *(v28 + 48) = v31;
      sub_1DACB71E4();
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB66328(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1DAB698C4(0, a1, a2, a3, sub_1DAA488A4);
  v5 = *v3;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;
        sub_1DACB71E4();
        result = sub_1DACB71E4();
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1DAB664AC()
{
  v1 = v0;
  v2 = type metadata accessor for EarningsCalendarEventModel();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &qword_1ECBE7DE8, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1DAB697A0(*(v5 + 56) + v27, v31, type metadata accessor for EarningsCalendarEventModel);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DAA7C55C(v26, *(v28 + 56) + v27, type metadata accessor for EarningsCalendarEventModel);
        result = sub_1DACB71E4();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1DAB66744()
{
  v1 = v0;
  v2 = type metadata accessor for Chart(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &qword_1EE11F6F0, type metadata accessor for Chart, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1DAB697A0(*(v5 + 56) + v27, v31, type metadata accessor for Chart);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DAA7C55C(v26, *(v28 + 56) + v27, type metadata accessor for Chart);
        result = sub_1DACB71E4();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1DAB669DC(unint64_t *a1, unint64_t *a2)
{
  v3 = v2;
  sub_1DAB699E0(0, a1, a2);
  v4 = *v2;
  v5 = sub_1DACB9E74();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; result = sub_1DACB71E4())
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v18 = v15 | (v10 << 6);
      v19 = (*(v4 + 48) + 136 * v18);
      v21 = v19[1];
      v20 = v19[2];
      v22 = v19[4];
      v28[3] = v19[3];
      v28[4] = v22;
      v23 = v19[5];
      v24 = v19[6];
      v25 = v19[7];
      v29 = *(v19 + 16);
      v28[6] = v24;
      v28[7] = v25;
      v28[5] = v23;
      v28[0] = *v19;
      v28[1] = v21;
      v28[2] = v20;
      v26 = *(*(v4 + 56) + 8 * v18);
      memmove((*(v6 + 48) + 136 * v18), v19, 0x88uLL);
      *(*(v6 + 56) + 8 * v18) = v26;
      sub_1DAA806E4(v28, v27);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v4 + 64 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_1DAB66BA0()
{
  v1 = v0;
  sub_1DAB698C4(0, &unk_1EE11CFE0, &unk_1EE11D048, 0x1E69B52B8, sub_1DAA420F4);
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v6 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_14:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_1DACB71E4();
        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_16;
      }

      v16 = *(v6 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB66D30()
{
  v1 = v0;
  sub_1DAB69A54();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v22;
        sub_1DACB71E4();
        result = sub_1DACB71E4();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB66EAC()
{
  v1 = v0;
  sub_1DAB6A108();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    v23 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DAAE8548(__dst, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = 776 * v16;
      memcpy(__dst, (*(v2 + 56) + 776 * v16), 0x308uLL);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      memcpy((*(v4 + 56) + v21), __dst, 0x308uLL);
      sub_1DACB71E4();
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1DAB6705C()
{
  v1 = v0;
  sub_1DAB6A04C();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v35;
        *(v27 + 64) = v36;
        *(v27 + 32) = v29;
        *(v27 + 48) = v30;
        *(v27 + 16) = v28;
        sub_1DACB71E4();
        result = sub_1DAB6A0AC(&v32, v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB67214()
{
  v1 = v0;
  sub_1DAB69FEC();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v22;
        sub_1DACB71E4();
        result = sub_1DACB71E4();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB67390()
{
  v1 = v0;
  v2 = type metadata accessor for YahooMultiQuoteItem(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &qword_1EE126630, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1DAB697A0(*(v5 + 56) + v27, v31, type metadata accessor for YahooMultiQuoteItem);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DAA7C55C(v26, *(v28 + 56) + v27, type metadata accessor for YahooMultiQuoteItem);
        result = sub_1DACB71E4();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1DAB6760C()
{
  v1 = v0;
  sub_1DAB69AB4();
  v2 = *v0;
  v3 = sub_1DACB9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_1DACB71E4();
        result = sub_1DACB71E4();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1DAB67770()
{
  v1 = v0;
  v2 = type metadata accessor for SDSAuthToken();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DACB7AB4();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB6A168();
  v7 = *v0;
  v8 = sub_1DACB9E74();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_1DAB697A0(*(v7 + 56) + v28, v37, type metadata accessor for SDSAuthToken);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_1DAA7C55C(v27, *(v29 + 56) + v28, type metadata accessor for SDSAuthToken);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1DAB67A90()
{
  v1 = v0;
  v27 = sub_1DACB9DF4();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB69BA4();
  v4 = *v0;
  v5 = sub_1DACB9E74();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_1DAA7C694(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_1DAA5616C(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_21;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_1DAB67D04()
{
  v1 = v0;
  v2 = type metadata accessor for LanguageConfig(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &unk_1EE123D20, type metadata accessor for LanguageConfig, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1DAB697A0(*(v5 + 56) + v27, v31, type metadata accessor for LanguageConfig);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DAA7C55C(v26, *(v28 + 56) + v27, type metadata accessor for LanguageConfig);
        result = sub_1DACB71E4();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1DAB67F80()
{
  v1 = v0;
  v2 = type metadata accessor for YahooQuoteDetailItem(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &qword_1EE126628, type metadata accessor for YahooQuoteDetailItem, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1DAB697A0(*(v5 + 56) + v27, v31, type metadata accessor for YahooQuoteDetailItem);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DAA7C55C(v26, *(v28 + 56) + v27, type metadata accessor for YahooQuoteDetailItem);
        result = sub_1DACB71E4();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_1DAB681FC(uint64_t a1)
{
  sub_1DAB6A214(0, &qword_1EE11FBD8, type metadata accessor for Chart);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1DAA7C3AC(0, &qword_1EE11F6F0, type metadata accessor for Chart, MEMORY[0x1E69E6EC8]);
    v9 = sub_1DACB9EA4();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    sub_1DACB71F4();
    while (1)
    {
      sub_1DAB6972C(v11, v7, &qword_1EE11FBD8, type metadata accessor for Chart, MEMORY[0x1E69E6158], sub_1DAB6A214);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1DAA4BF3C(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Chart(0);
      result = sub_1DAA7C55C(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for Chart);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAB68448(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DAA96D8C();
    v3 = sub_1DACB9EA4();
    v4 = a1 + 32;
    sub_1DACB71F4();
    v5 = MEMORY[0x1E69E7CA0];
    v6 = MEMORY[0x1E69E69B8];
    while (1)
    {
      sub_1DAB6972C(v4, v15, &qword_1EE11F770, v6, v5 + 8, sub_1DAB6A54C);
      result = sub_1DAB09554(v15);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      result = sub_1DAA5616C(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAB685EC()
{
  result = qword_1EE11F7A8;
  if (!qword_1EE11F7A8)
  {
    sub_1DAA420F4(255, qword_1EE123DC0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F7A8);
  }

  return result;
}

unint64_t sub_1DAB68654()
{
  result = qword_1EE123FE0;
  if (!qword_1EE123FE0)
  {
    sub_1DAA7C3AC(255, &qword_1EE123FE8, MEMORY[0x1E69D6A58], MEMORY[0x1E69E5E28]);
    sub_1DAA4F4F4(&qword_1EE1240E8, MEMORY[0x1E69D6A58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123FE0);
  }

  return result;
}

unint64_t sub_1DAB68788(uint64_t a1)
{
  sub_1DAB6A214(0, &qword_1EE11D198, type metadata accessor for Quote);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1DAA7C3AC(0, &unk_1EE11F6E0, type metadata accessor for Quote, MEMORY[0x1E69E6EC8]);
    v9 = sub_1DACB9EA4();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    sub_1DACB71F4();
    while (1)
    {
      sub_1DAB6972C(v11, v7, &qword_1EE11D198, type metadata accessor for Quote, MEMORY[0x1E69E6158], sub_1DAB6A214);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1DAA4BF3C(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Quote();
      result = sub_1DAA7C55C(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for Quote);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAB68A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1DAA82848();
  v3 = sub_1DACB9EA4();
  sub_1DACB71F4();
  v4 = *(a1 + 144);
  v37 = *(a1 + 128);
  v38 = v4;
  v39 = *(a1 + 160);
  v40 = *(a1 + 176);
  v5 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v5;
  v6 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v6;
  v7 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v7;
  v9 = *(&v31 + 1);
  v8 = v31;
  sub_1DAB6972C(&v31, v30, &qword_1ECBE7DF0, MEMORY[0x1E69E6158], &type metadata for StockMetadataManager.CacheEntry, sub_1DAB6A54C);
  result = sub_1DAA4BF3C(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 184);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    v14 = v3[7] + 136 * result;
    *v14 = v32;
    v15 = v33;
    v16 = v34;
    v17 = v36;
    *(v14 + 48) = v35;
    *(v14 + 64) = v17;
    *(v14 + 16) = v15;
    *(v14 + 32) = v16;
    v18 = v37;
    v19 = v38;
    v20 = v39;
    *(v14 + 128) = v40;
    *(v14 + 96) = v19;
    *(v14 + 112) = v20;
    *(v14 + 80) = v18;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = (v12 + 152);
    v25 = v12[7];
    v37 = v12[6];
    v38 = v25;
    v39 = v12[8];
    v40 = *(v12 + 18);
    v26 = v12[3];
    v33 = v12[2];
    v34 = v26;
    v27 = v12[5];
    v35 = v12[4];
    v36 = v27;
    v28 = v12[1];
    v31 = *v12;
    v32 = v28;
    v9 = *(&v31 + 1);
    v8 = v31;
    sub_1DAB6972C(&v31, v30, &qword_1ECBE7DF0, MEMORY[0x1E69E6158], &type metadata for StockMetadataManager.CacheEntry, sub_1DAB6A54C);
    result = sub_1DAA4BF3C(v8, v9);
    v12 = v24;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAB68C38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DAB6A4E8();
    v3 = sub_1DACB9EA4();
    v4 = a1 + 32;
    sub_1DACB71F4();
    v5 = MEMORY[0x1E69E7CA0];
    v6 = MEMORY[0x1E69E6158];
    while (1)
    {
      sub_1DAB6972C(v4, &v15, &unk_1ECBE7E48, v6, v5 + 8, sub_1DAB6A54C);
      v7 = v15;
      v8 = v16;
      result = sub_1DAA4BF3C(v15, v16);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      result = sub_1DAA5616C(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAB68D7C(uint64_t a1)
{
  sub_1DAB6A214(0, &qword_1EE11E110, type metadata accessor for CurrencyResponse);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1DAB6A280(0, &qword_1EE11D038, type metadata accessor for CurrencyResponse, sub_1DAB69930);
    v8 = sub_1DACB9EA4();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1DAB6972C(v9, v6, &qword_1EE11E110, type metadata accessor for CurrencyResponse, &type metadata for CurrencyManagerCacheKey, sub_1DAB6A214);
      result = sub_1DAB0A69C();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = type metadata accessor for CurrencyResponse();
      result = sub_1DAA7C55C(v6, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for CurrencyResponse);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAB68FA4(uint64_t a1)
{
  sub_1DAB6A214(0, &qword_1ECBE7E30, MEMORY[0x1E695A3F0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1DAB6A280(0, &qword_1ECBE7E38, MEMORY[0x1E695A3F0], sub_1DAB6A300);
    v9 = sub_1DACB9EA4();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    sub_1DACB71F4();
    while (1)
    {
      sub_1DAB6972C(v11, v7, &qword_1ECBE7E30, MEMORY[0x1E695A3F0], &type metadata for NewsDisplayConfiguration, sub_1DAB6A214);
      result = sub_1DAB09648(*v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + result) = *v7;
      v16 = v9[7];
      v17 = sub_1DACB7184();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v7[v10], v17);
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAB691F8(uint64_t a1)
{
  sub_1DAB6A214(0, &qword_1ECBE7DF8, type metadata accessor for EarningsCalendarEventModel);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1DAA7C3AC(0, &qword_1ECBE7DE8, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6EC8]);
    v9 = sub_1DACB9EA4();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    sub_1DACB71F4();
    while (1)
    {
      sub_1DAB6972C(v11, v7, &qword_1ECBE7DF8, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6158], sub_1DAB6A214);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1DAA4BF3C(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for EarningsCalendarEventModel();
      result = sub_1DAA7C55C(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for EarningsCalendarEventModel);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAB69444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DAB698C4(0, &unk_1EE11F6B0, &qword_1EE123EA0, MEMORY[0x1E69E6158], sub_1DAA488A4);
    v3 = sub_1DACB9EA4();
    sub_1DACB71F4();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1DACB71E4();
      sub_1DACB71E4();
      result = sub_1DAA4BF3C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAB69568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DAB698C4(0, &unk_1EE11CFE0, &unk_1EE11D048, 0x1E69B52B8, sub_1DAA420F4);
    v3 = sub_1DACB9EA4();
    sub_1DACB71F4();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1DACB71E4();
      v8 = v7;
      result = sub_1DAA4BF3C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1DAB6968C()
{
  if (!qword_1ECBE7DC8)
  {
    type metadata accessor for FileAttributeKey(255);
    sub_1DAA4F4F4(&qword_1EE11F8C0, type metadata accessor for FileAttributeKey);
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7DC8);
    }
  }
}

uint64_t sub_1DAB6972C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1DAB697A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1DAB69808()
{
  if (!qword_1EE11F718)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F718);
    }
  }
}

void sub_1DAB698C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1DACB9EB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1DAB69930()
{
  result = qword_1EE11E120;
  if (!qword_1EE11E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E120);
  }

  return result;
}

void sub_1DAB699E0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1DAA488A4(255, a3);
    sub_1DAB07284();
    v4 = sub_1DACB9EB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAB69A54()
{
  if (!qword_1EE11D020)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D020);
    }
  }
}

void sub_1DAB69AB4()
{
  if (!qword_1EE11D008)
  {
    sub_1DAB5FC04(255, &qword_1EE11D150, type metadata accessor for ChartManagerObserverProxy, MEMORY[0x1E69E62F8]);
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D008);
    }
  }
}

unint64_t sub_1DAB69B4C()
{
  result = qword_1EE11F478;
  if (!qword_1EE11F478)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE11F478);
  }

  return result;
}

void sub_1DAB69BA4()
{
  if (!qword_1EE11F690)
  {
    sub_1DACB9DF4();
    sub_1DAB69B4C();
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F690);
    }
  }
}

unint64_t sub_1DAB69C14(uint64_t a1)
{
  sub_1DAB69F80(0, &qword_1EE123A68, MEMORY[0x1E6968FB0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1DAB69E44();
    v9 = sub_1DACB9EA4();
    v10 = &v7[*(v3 + 48)];
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    sub_1DACB71F4();
    while (1)
    {
      sub_1DAB6972C(v11, v7, &qword_1EE123A68, MEMORY[0x1E6968FB0], &type metadata for DownloadedImage, sub_1DAB69F80);
      result = sub_1DAB0979C(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1DACB7AB4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7] + 24 * v15;
      v19 = *(v10 + 2);
      *v18 = *v10;
      *(v18 + 16) = v19;
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1DAB69E44()
{
  if (!qword_1EE11F740)
  {
    sub_1DACB7AB4();
    sub_1DAA4F4F4(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F740);
    }
  }
}

void sub_1DAB69EE0()
{
  if (!qword_1ECBE7E10)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    sub_1DAA4F4F4(&qword_1EE11D070, type metadata accessor for CIImageRepresentationOption);
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7E10);
    }
  }
}

void sub_1DAB69F80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1DAB69FEC()
{
  if (!qword_1EE126638)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE126638);
    }
  }
}

void sub_1DAB6A04C()
{
  if (!qword_1EE126640)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE126640);
    }
  }
}

void sub_1DAB6A108()
{
  if (!qword_1EE11F6F8)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F6F8);
    }
  }
}

void sub_1DAB6A168()
{
  if (!qword_1EE11F748)
  {
    sub_1DACB7AB4();
    type metadata accessor for SDSAuthToken();
    sub_1DAA4F4F4(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F748);
    }
  }
}

void sub_1DAB6A214(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1DAB6A280(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1DACB9EB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1DAB6A300()
{
  result = qword_1EE120DD0;
  if (!qword_1EE120DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DD0);
  }

  return result;
}

void sub_1DAB6A354()
{
  if (!qword_1EE11F708)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F708);
    }
  }
}

void sub_1DAB6A3B4()
{
  if (!qword_1EE11F730)
  {
    sub_1DAB5ABC0(255, &qword_1EE11F9F0, &qword_1EE11F920, 0x1E69B52D0, MEMORY[0x1E69E62F8]);
    sub_1DAB07284();
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F730);
    }
  }
}

void sub_1DAB6A44C()
{
  if (!qword_1EE11F6A8)
  {
    sub_1DAA420F4(255, qword_1EE123DC0, 0x1E696AD98);
    sub_1DAA420F4(255, &unk_1EE11F840, 0x1E69B5278);
    sub_1DAB685EC();
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F6A8);
    }
  }
}

void sub_1DAB6A4E8()
{
  if (!qword_1ECBE7E40)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7E40);
    }
  }
}

void sub_1DAB6A54C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1DAB6A5A4()
{
  result = qword_1EE1243E0;
  if (!qword_1EE1243E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243E0);
  }

  return result;
}

uint64_t sub_1DAB6A620(uint64_t a1, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;
  result = sub_1DACB71E4();
  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a4 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
      sub_1DACB71E4();
      a2(&v16, &v15);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v16;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB6A764(uint64_t a1, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v50 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;
  result = sub_1DACB71E4();
  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = *(a4 + 56);
      v17 = *(a4 + 48) + 136 * v15;
      v48[0] = *v17;
      v18 = *(v17 + 64);
      v20 = *(v17 + 16);
      v19 = *(v17 + 32);
      v48[3] = *(v17 + 48);
      v48[4] = v18;
      v48[1] = v20;
      v48[2] = v19;
      v22 = *(v17 + 96);
      v21 = *(v17 + 112);
      v23 = *(v17 + 80);
      v49 = *(v17 + 128);
      v48[6] = v22;
      v48[7] = v21;
      v48[5] = v23;
      v24 = *(v16 + 8 * v15);
      v25 = *(v17 + 112);
      v45 = *(v17 + 96);
      v46 = v25;
      v26 = *(v17 + 128);
      v27 = *(v17 + 48);
      v41 = *(v17 + 32);
      v42 = v27;
      v28 = *(v17 + 80);
      v43 = *(v17 + 64);
      v44 = v28;
      v29 = *(v17 + 16);
      v39 = *v17;
      v40 = v29;
      *&v47 = v26;
      *(&v47 + 1) = v24;
      sub_1DAA806E4(v48, &v30);
      sub_1DACB71E4();
      a2(&v50, &v39);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      v32 = v41;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v30 = v39;
      v31 = v40;
      result = sub_1DAB7663C(&v30, sub_1DAB765AC);
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v36 = v45;
    v37 = v46;
    v38 = v47;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v30 = v39;
    v31 = v40;
    sub_1DAB7663C(&v30, sub_1DAB765AC);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v50;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB6A988(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v11 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = (a4 + 48);
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10[0] = *(v7 - 2);
      v10[1] = v8;
      v10[2] = v9;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      a2(&v11, v10);
      if (v4)
      {
        break;
      }

      v7 += 3;

      if (!--v5)
      {
        return v11;
      }
    }
  }

  return result;
}

uint64_t sub_1DAB6AA74(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;
      sub_1DACB71E4();
      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_1DAB6AB14(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 32;
    v28 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 80);
      v11 = *(a3 + v9 + 112);
      v43 = *(a3 + v9 + 96);
      v44 = v11;
      v12 = *(a3 + v9 + 112);
      v45 = *(a3 + v9 + 128);
      v13 = *(a3 + v9 + 16);
      v14 = *(a3 + v9 + 48);
      v39 = *(a3 + v9 + 32);
      v40 = v14;
      v15 = *(a3 + v9 + 48);
      v16 = *(a3 + v9 + 80);
      v41 = *(a3 + v9 + 64);
      v42 = v16;
      v17 = *(a3 + v9 + 16);
      v38[0] = *(a3 + v9);
      v38[1] = v17;
      v52 = v43;
      v53 = v12;
      v54 = *(a3 + v9 + 128);
      v48 = v39;
      v49 = v15;
      v50 = v41;
      v51 = v10;
      v46 = v38[0];
      v47 = v13;
      sub_1DAAD4CCC(v38, &v29);
      v18 = v6(&v46);
      if (v3)
      {
        v35 = v52;
        v36 = v53;
        v37 = v54;
        v31 = v48;
        v32 = v49;
        v33 = v50;
        v34 = v51;
        v29 = v46;
        v30 = v47;
        sub_1DAAD4D28(&v29);

        goto LABEL_15;
      }

      if (v18)
      {
        v35 = v52;
        v36 = v53;
        v37 = v54;
        v31 = v48;
        v32 = v49;
        v33 = v50;
        v34 = v51;
        v29 = v46;
        v30 = v47;
        result = swift_isUniquelyReferenced_nonNull_native();
        v55 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1DAAA50F8(0, *(v8 + 16) + 1, 1);
          v8 = v55;
        }

        v20 = *(v8 + 16);
        v19 = *(v8 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_1DAAA50F8((v19 > 1), v20 + 1, 1);
          v8 = v55;
        }

        *(v8 + 16) = v20 + 1;
        v21 = (v8 + 144 * v20);
        v21[2] = v29;
        v22 = v30;
        v23 = v31;
        v24 = v33;
        v21[5] = v32;
        v21[6] = v24;
        v21[3] = v22;
        v21[4] = v23;
        v25 = v34;
        v26 = v35;
        v27 = v37;
        v21[9] = v36;
        v21[10] = v27;
        v21[7] = v25;
        v21[8] = v26;
        v6 = v28;
      }

      else
      {
        v35 = v52;
        v36 = v53;
        v37 = v54;
        v31 = v48;
        v32 = v49;
        v33 = v50;
        v34 = v51;
        v29 = v46;
        v30 = v47;
        result = sub_1DAAD4D28(&v29);
      }

      ++v7;
      v9 += 144;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1DAB6AD68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_1DAB76FDC(v8, v18);
      v10 = v6(v18);
      if (v3)
      {
        sub_1DAB77014(v18);

        goto LABEL_15;
      }

      if (v10)
      {
        v15 = v18[0];
        v16 = v18[1];
        *v17 = v19[0];
        *&v17[10] = *(v19 + 10);
        result = swift_isUniquelyReferenced_nonNull_native();
        v20 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1DAB25D38(0, *(v9 + 16) + 1, 1);
          v9 = v20;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_1DAB25D38((v11 > 1), v12 + 1, 1);
          v9 = v20;
        }

        *(v9 + 16) = v12 + 1;
        v13 = (v9 + (v12 << 6));
        *(v13 + 74) = *&v17[10];
        v13[3] = v16;
        v13[4] = *v17;
        v13[2] = v15;
        v6 = v14;
      }

      else
      {
        result = sub_1DAB77014(v18);
      }

      ++v7;
      v8 += 64;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

char *sub_1DAB6AEF4(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DACB9E14())
  {
    v7 = 0;
    v50 = a3 & 0xC000000000000001;
    v8 = MEMORY[0x1E69E7CC0];
    v17 = i;
    v16 = a1;
    while (1)
    {
      if (v50)
      {
        v9 = MEMORY[0x1E12777A0](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(a3 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v49[0] = v9;
      a1(&v39, v49);
      if (v3)
      {

        return v8;
      }

      v38[6] = v45;
      v38[7] = v46;
      v38[8] = v47;
      v38[9] = v48;
      v38[2] = v41;
      v38[3] = v42;
      v38[4] = v43;
      v38[5] = v44;
      v38[0] = v39;
      v38[1] = v40;
      if (sub_1DAB76AC8(v38) == 1)
      {
        v34 = v45;
        v35 = v46;
        v36 = v47;
        v37 = v48;
        v30 = v41;
        v31 = v42;
        v32 = v43;
        v33 = v44;
        v28 = v39;
        v29 = v40;
        sub_1DAB76AE0(&v28, qword_1EE123390, &type metadata for StockNewsFeed);
      }

      else
      {
        v34 = v45;
        v35 = v46;
        v36 = v47;
        v37 = v48;
        v30 = v41;
        v31 = v42;
        v32 = v43;
        v33 = v44;
        v28 = v39;
        v29 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DAADBEDC(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1DAADBEDC((v12 > 1), v13 + 1, 1, v8);
        }

        v22 = v32;
        v23 = v33;
        v20 = v30;
        v21 = v31;
        v26 = v36;
        v27 = v37;
        v24 = v34;
        v25 = v35;
        v18 = v28;
        v19 = v29;
        *(v8 + 2) = v13 + 1;
        v14 = &v8[160 * v13];
        *(v14 + 2) = v18;
        *(v14 + 3) = v19;
        *(v14 + 6) = v22;
        *(v14 + 7) = v23;
        *(v14 + 4) = v20;
        *(v14 + 5) = v21;
        *(v14 + 10) = v26;
        *(v14 + 11) = v27;
        *(v14 + 8) = v24;
        *(v14 + 9) = v25;
        a1 = v16;
      }

      ++v7;
      if (v11 == v17)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t NewsFeedService.__allocating_init(contentContext:headlineScorerFactory:appConfigurationManager:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1DAA4D460(a2, v6 + 24);
  sub_1DAA4D460(a3, v6 + 64);
  return v6;
}

uint64_t NewsFeedType.stock.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DAB5916C(v1, v9);
  sub_1DAB5916C(v9, v10);
  v3 = v10[7];
  *(a1 + 96) = v10[6];
  *(a1 + 112) = v3;
  *(a1 + 128) = v11;
  v4 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v4;
  v5 = v10[5];
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v5;
  v6 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v6;
  sub_1DAB5916C(v9, v12);
  return sub_1DAA806E4(v12, v8);
}

__n128 sub_1DAB6B2B8@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAB770D4(0, &qword_1EE11F500, &type metadata for NewsFeedFilterOptions.Option, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 16) = xmmword_1DACC1D20;
  *(v4 + 32) = v5;
  v7 = a1[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  result = *(a1 + 42);
  *(v4 + 74) = result;
  *a2 = v4;
  return result;
}

BOOL sub_1DAB6B340(uint64_t a1)
{
  v3 = *v1 + 32;
  v4 = *(*v1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 64;
    v6 = sub_1DAB750B8(v3, a1);
    v3 = v5;
  }

  while (!v6);
  return v4 != 0;
}

uint64_t sub_1DAB6B3A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6[2] = a1;
  sub_1DACB71E4();
  result = sub_1DAB6AD68(sub_1DAB754B8, v6, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DAB6B448()
{
  v1 = *v0;
  sub_1DACBA284();
  MEMORY[0x1E1277D70](v1);
  return sub_1DACBA2C4();
}

uint64_t NewsFeedRequest.feedID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsFeedRequest.laterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsFeedRequest() + 24);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsFeedRequest.earlierDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsFeedRequest() + 28);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsFeedRequest.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NewsFeedRequest();
  sub_1DAB5916C(v1 + *(v3 + 32), v6);
  sub_1DAB5916C(v6, a1);
  return sub_1DAB59344(v6, v5);
}

uint64_t NewsFeedRequest.init(feedID:maxCount:laterDate:earlierDate:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  sub_1DAB5916C(a6, v18);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v13 = type metadata accessor for NewsFeedRequest();
  v14 = v13[6];
  v15 = sub_1DACB7CC4();
  v16 = *(*(v15 - 8) + 32);
  v16(&a7[v14], a4, v15);
  v16(&a7[v13[7]], a5, v15);
  return sub_1DAB5916C(v18, &a7[v13[8]]);
}

uint64_t StockNewsFeed.feedID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

uint64_t StockNewsFeed.type.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DAB5916C(v1 + 24, v5);
  sub_1DAB5916C(v5, a1);
  return sub_1DAB59344(v5, v4);
}

uint64_t StockNewsFeed.filtered(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  sub_1DAB5916C((v2 + 3), v11);
  v10[0] = v4;
  sub_1DAB6B824(v5);
  *a2 = v8;
  a2[1] = v6;
  a2[2] = v7;
  sub_1DAB5916C(v11, (a2 + 3));
  sub_1DACB71E4();
  return sub_1DAB59344(v11, v10);
}

void sub_1DAB6B824(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  sub_1DACB71E4();
  if (!v4)
  {
    sub_1DACB71E4();

    return;
  }

  v162 = a1;
  v5 = 0;
  v6 = v3 + 32;
  v171 = v4;
  v172 = v3 + 32;
  v166 = 0;
  v170 = v3;
  while (v5 < *(v3 + 16))
  {
    sub_1DAB76FDC(v6, &v197);
    *(v191 + 10) = *(v199 + 10);
    v189 = v197;
    v190 = v198;
    v191[0] = v199[0];
    v169 = BYTE9(v199[1]);
    if (BYTE9(v199[1]) == 3)
    {
      *v177 = 4;
      memset(&v177[8], 0, 40);
      v177[48] = 9;
      sub_1DAAD4C70(v177, v208);
      v206[0] = *v177;
      v206[1] = *&v177[16];
      v206[2] = *&v177[32];
      v207 = v177[48];
      v7 = *(v162 + 16);
      if (v7)
      {
        v8 = 0;
        v9 = v162 + 32;
        v176 = MEMORY[0x1E69E7CC0];
        do
        {
          v10 = (v9 + 144 * v8);
          v11 = v8;
          while (1)
          {
            if (v11 >= v7)
            {
              goto LABEL_130;
            }

            v12 = v10[7];
            v202 = v10[6];
            v203 = v12;
            v204 = v10[8];
            v13 = v10[3];
            v199[0] = v10[2];
            v199[1] = v13;
            v14 = v10[5];
            v200 = v10[4];
            v201 = v14;
            v15 = v10[1];
            v197 = *v10;
            v198 = v15;
            v8 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_131;
            }

            v16 = v10[7];
            v194 = v10[6];
            v195 = v16;
            v196 = v10[8];
            v17 = v10[3];
            v191[0] = v10[2];
            v191[1] = v17;
            v18 = v10[5];
            v192 = v10[4];
            v193 = v18;
            v19 = v10[1];
            v189 = *v10;
            v190 = v19;
            sub_1DAAD4CCC(&v197, &v180);
            if ((sub_1DAC78658(&v189) & 1) == 0)
            {
              break;
            }

            sub_1DAAD4D28(&v197);
            ++v11;
            v10 += 9;
            if (v8 == v7)
            {
              v4 = v171;
              goto LABEL_23;
            }
          }

          v20 = v176;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v205 = v176;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAAA50F8(0, v176[2] + 1, 1);
            v20 = v205;
          }

          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1DAAA50F8((v22 > 1), v23 + 1, 1);
            v20 = v205;
          }

          *(v20 + 16) = v23 + 1;
          v176 = v20;
          v24 = (v20 + 144 * v23);
          v24[2] = v197;
          v25 = v198;
          v26 = v199[0];
          v27 = v200;
          v24[5] = v199[1];
          v24[6] = v27;
          v24[3] = v25;
          v24[4] = v26;
          v28 = v201;
          v29 = v202;
          v30 = v204;
          v24[9] = v203;
          v24[10] = v30;
          v24[7] = v28;
          v24[8] = v29;
          v4 = v171;
        }

        while (v8 != v7);
      }

      else
      {
        v176 = MEMORY[0x1E69E7CC0];
      }

LABEL_23:
      sub_1DAAD4D7C(v208);
      sub_1DAAD4D7C(v206);
      v3 = v170;
LABEL_24:
      v163 = 0;
      v164 = 0;
      v31 = 0;
      v165 = 1;
LABEL_29:
      if (v31 >= *(v3 + 16))
      {
        goto LABEL_128;
      }

      v173 = v31;
      sub_1DAB76FDC(v172 + (v31 << 6), v177);
      if (v179 <= 2u)
      {
        if (v179)
        {
          if (v179 != 1)
          {
            v120 = *v177;
            v197 = *&v177[8];
            v198 = *&v177[24];
            v199[0] = *&v177[40];
            LOBYTE(v199[1]) = v178;
            v121 = sub_1DAB7704C(&v197, &v180);
            if (v183 == 255)
            {
              sub_1DAB76AE0(&v180, qword_1EE122680, &type metadata for HeadlineCondition);
              if ((v120 & 0x8000000000000000) != 0)
              {
                goto LABEL_132;
              }

              v148 = v176[2];
              if (v148 >= v120)
              {
                v149 = v120;
              }

              else
              {
                v149 = v176[2];
              }

              if (v120)
              {
                v150 = v149;
              }

              else
              {
                v150 = 0;
              }

              if (v148 == v150)
              {
                sub_1DAB76AE0(&v197, qword_1EE122680, &type metadata for HeadlineCondition);
              }

              else if (v150)
              {
                sub_1DAB770D4(0, &qword_1EE11F4E8, &type metadata for Headline, MEMORY[0x1E69E6F90]);
                v151 = swift_allocObject();
                v152 = _swift_stdlib_malloc_size(v151);
                v151[2] = v150;
                v151[3] = 2 * ((v152 - 32) / 144);
                swift_arrayInitWithCopy();
                sub_1DAB76AE0(&v197, qword_1EE122680, &type metadata for HeadlineCondition);

                v176 = v151;
              }

              else
              {

                sub_1DAB76AE0(&v197, qword_1EE122680, &type metadata for HeadlineCondition);
                v176 = MEMORY[0x1E69E7CC0];
              }
            }

            else
            {
              v189 = v180;
              v190 = v181;
              v191[0] = v182;
              LOBYTE(v191[1]) = v183;
              *&v180 = 0;
              MEMORY[0x1EEE9AC00](v121);
              v160[0] = &v189;
              v160[1] = &v180;
              v161 = v120;
              v122 = v166;
              v176 = sub_1DAB6AB14(sub_1DAB77124, &v159, v176);
              v166 = v122;
              sub_1DAB76AE0(&v197, qword_1EE122680, &type metadata for HeadlineCondition);
              sub_1DAAD4D7C(&v189);
            }

            goto LABEL_28;
          }

          v33 = *v177;
          v34 = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
          sub_1DAB16534(v33);

          v35 = sub_1DACB9634();

          v175 = v34;
          [v34 addObjectsFromArray_];

          v36 = v176;
          v37 = v176[2];
          if (v37)
          {
            v38 = 0;
            v174 = v176[2];
            v167 = v37 - 1;
            v168 = v176 + 4;
            v32 = MEMORY[0x1E69E7CC0];
            v39 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
            do
            {
              v40 = &v168[18 * v38];
              v41 = v38;
              while (1)
              {
                if (v41 >= *(v36 + 16))
                {
                  __break(1u);
                  goto LABEL_125;
                }

                v189 = *v40;
                v42 = v40[1];
                v43 = v40[2];
                v44 = v40[4];
                v191[1] = v40[3];
                v192 = v44;
                v190 = v42;
                v191[0] = v43;
                v45 = v40[5];
                v46 = v40[6];
                v47 = v40[8];
                v195 = v40[7];
                v196 = v47;
                v193 = v45;
                v194 = v46;
                memmove(&v197, v40, 0x90uLL);
                if (sub_1DAA9B6F0(&v197) == 1)
                {
                  v48 = *sub_1DAA9B6E0(&v197);
                  v182 = v191[0];
                  v183 = v191[1];
                  v180 = v189;
                  v181 = v190;
                  v187 = v195;
                  v188 = v196;
                  v185 = v193;
                  v186 = v194;
                  v184 = v192;
                  v49 = *sub_1DAA9B6E0(&v180);
                }

                else
                {
                  v48 = *sub_1DAA9B6E0(&v197);
                }

                swift_unknownObjectRetain();
                if (([v48 respondsToSelector_] & 1) == 0)
                {
                  break;
                }

                sub_1DAAD4CCC(&v189, &v180);
                v50 = [v48 v39[110]];
                swift_unknownObjectRelease();
                if (!v50)
                {
                  goto LABEL_47;
                }

                v51 = [v50 stocksClusterID];
                swift_unknownObjectRelease();
                if (!v51)
                {
                  goto LABEL_47;
                }

                v52 = v175;
                [v175 addObject_];
                v53 = [v52 countForObject_];

                v39 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
                if (v53 <= 1)
                {
                  goto LABEL_47;
                }

                ++v41;
                sub_1DAAD4D28(&v189);
                v40 += 9;
                v36 = v176;
                if (v174 == v41)
                {
                  goto LABEL_26;
                }
              }

              sub_1DAAD4CCC(&v189, &v180);
              swift_unknownObjectRelease();
LABEL_47:
              v54 = swift_isUniquelyReferenced_nonNull_native();
              *&v208[0] = v32;
              if ((v54 & 1) == 0)
              {
                sub_1DAAA50F8(0, *(v32 + 16) + 1, 1);
                v32 = *&v208[0];
              }

              v56 = *(v32 + 16);
              v55 = *(v32 + 24);
              if (v56 >= v55 >> 1)
              {
                sub_1DAAA50F8((v55 > 1), v56 + 1, 1);
                v32 = *&v208[0];
              }

              v38 = v41 + 1;
              *(v32 + 16) = v56 + 1;
              v57 = (v32 + 144 * v56);
              v57[2] = v189;
              v58 = v190;
              v59 = v191[0];
              v60 = v192;
              v57[5] = v191[1];
              v57[6] = v60;
              v57[3] = v58;
              v57[4] = v59;
              v61 = v193;
              v62 = v194;
              v63 = v196;
              v57[9] = v195;
              v57[10] = v63;
              v57[7] = v61;
              v57[8] = v62;
              v36 = v176;
              v39 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
            }

            while (v167 != v41);
LABEL_26:

            v176 = v32;
LABEL_27:
            v3 = v170;
            v4 = v171;
            goto LABEL_28;
          }
        }

        else
        {
          v87 = *v177;
          v88 = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
          sub_1DAB16534(v87);

          v89 = sub_1DACB9634();

          v175 = v88;
          [v88 addObjectsFromArray_];

          v90 = v176;
          v91 = v176[2];
          if (v91)
          {
            v92 = 0;
            v93 = v176 + 4;
            v174 = v176[2];
            v167 = v91 - 1;
            v32 = MEMORY[0x1E69E7CC0];
            v168 = v176 + 4;
LABEL_70:
            v94 = &v93[18 * v92];
            v95 = v92;
            while (v95 < *(v90 + 16))
            {
              v189 = *v94;
              v96 = v94[1];
              v97 = v94[2];
              v98 = v94[4];
              v191[1] = v94[3];
              v192 = v98;
              v190 = v96;
              v191[0] = v97;
              v99 = v94[5];
              v100 = v94[6];
              v101 = v94[8];
              v195 = v94[7];
              v196 = v101;
              v193 = v99;
              v194 = v100;
              memmove(&v197, v94, 0x90uLL);
              if (sub_1DAA9B6F0(&v197) == 1)
              {
                v102 = *sub_1DAA9B6E0(&v197);
                v182 = v191[0];
                v183 = v191[1];
                v180 = v189;
                v181 = v190;
                v187 = v195;
                v188 = v196;
                v185 = v193;
                v186 = v194;
                v184 = v192;
                v103 = *sub_1DAA9B6E0(&v180);
              }

              else
              {
                v102 = *sub_1DAA9B6E0(&v197);
              }

              swift_unknownObjectRetain();
              sub_1DAAD4CCC(&v189, &v180);
              v104 = [v102 articleID];
              swift_unknownObjectRelease();
              v105 = v104;
              v106 = v104;
              if (!v104)
              {
                sub_1DACB9324();
                v106 = sub_1DACB92F4();

                sub_1DACB9324();
                v105 = sub_1DACB92F4();
              }

              v107 = v104;
              v108 = v175;
              [v175 addObject_];

              v109 = [v108 countForObject_];
              if (v109 <= 1)
              {
                v110 = swift_isUniquelyReferenced_nonNull_native();
                *&v208[0] = v32;
                if ((v110 & 1) == 0)
                {
                  sub_1DAAA50F8(0, *(v32 + 16) + 1, 1);
                  v32 = *&v208[0];
                }

                v112 = *(v32 + 16);
                v111 = *(v32 + 24);
                if (v112 >= v111 >> 1)
                {
                  sub_1DAAA50F8((v111 > 1), v112 + 1, 1);
                  v32 = *&v208[0];
                }

                v92 = v95 + 1;
                *(v32 + 16) = v112 + 1;
                v113 = (v32 + 144 * v112);
                v113[2] = v189;
                v114 = v190;
                v115 = v191[0];
                v116 = v192;
                v113[5] = v191[1];
                v113[6] = v116;
                v113[3] = v114;
                v113[4] = v115;
                v117 = v193;
                v118 = v194;
                v119 = v196;
                v113[9] = v195;
                v113[10] = v119;
                v113[7] = v117;
                v113[8] = v118;
                v93 = v168;
                v90 = v176;
                if (v167 != v95)
                {
                  goto LABEL_70;
                }

                goto LABEL_26;
              }

              ++v95;
              sub_1DAAD4D28(&v189);
              v94 += 9;
              v90 = v176;
              if (v174 == v95)
              {
                goto LABEL_26;
              }
            }

LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            break;
          }
        }

        v32 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }

      if (v179 != 3)
      {
        if (v179 == 4)
        {
          v208[0] = *v177;
          v208[1] = *&v177[16];
          v208[2] = *&v177[32];
          v209 = v177[48];
          sub_1DAAD4C70(v208, v206);
          v64 = v176;
          v65 = v176[2];
          if (v65)
          {
            v66 = 0;
            v67 = (v176 + 4);
            v174 = v65 - 1;
            v68 = MEMORY[0x1E69E7CC0];
            v175 = (v176 + 4);
            do
            {
              v69 = &v67[144 * v66];
              v70 = v66;
              while (1)
              {
                if (v70 >= *(v64 + 16))
                {
LABEL_125:
                  __break(1u);
                  goto LABEL_126;
                }

                v197 = *v69;
                v71 = v69[1];
                v72 = v69[2];
                v73 = v69[4];
                v199[1] = v69[3];
                v200 = v73;
                v198 = v71;
                v199[0] = v72;
                v74 = v69[5];
                v75 = v69[6];
                v76 = v69[8];
                v203 = v69[7];
                v204 = v76;
                v201 = v74;
                v202 = v75;
                v66 = v70 + 1;
                v194 = v75;
                v195 = v203;
                v196 = v76;
                v191[0] = v199[0];
                v191[1] = v199[1];
                v192 = v200;
                v193 = v74;
                v189 = v197;
                v190 = v198;
                sub_1DAAD4CCC(&v197, &v180);
                if ((sub_1DAC78658(&v189) & 1) == 0)
                {
                  break;
                }

                sub_1DAAD4D28(&v197);
                v69 += 9;
                ++v70;
                if (v65 == v66)
                {
                  goto LABEL_103;
                }
              }

              v77 = swift_isUniquelyReferenced_nonNull_native();
              v205 = v68;
              if ((v77 & 1) == 0)
              {
                sub_1DAAA50F8(0, *(v68 + 16) + 1, 1);
                v68 = v205;
              }

              v79 = *(v68 + 16);
              v78 = *(v68 + 24);
              if (v79 >= v78 >> 1)
              {
                sub_1DAAA50F8((v78 > 1), v79 + 1, 1);
                v68 = v205;
              }

              *(v68 + 16) = v79 + 1;
              v80 = (v68 + 144 * v79);
              v80[2] = v197;
              v81 = v198;
              v82 = v199[0];
              v83 = v200;
              v80[5] = v199[1];
              v80[6] = v83;
              v80[3] = v81;
              v80[4] = v82;
              v84 = v201;
              v85 = v202;
              v86 = v204;
              v80[9] = v203;
              v80[10] = v86;
              v80[7] = v84;
              v80[8] = v85;
              v67 = v175;
              v64 = v176;
            }

            while (v174 != v70);
          }

          else
          {
            v68 = MEMORY[0x1E69E7CC0];
          }

LABEL_103:
          sub_1DAAD4D7C(v206);

          sub_1DAAD4D7C(v208);
          v176 = v68;
        }

        else
        {
          v123 = *v177;
          v124 = v176[2];
          if (v124)
          {
            v125 = 0;
            v174 = *v177 + 32;
            v175 = (v176 + 4);
            v126 = MEMORY[0x1E69E7CC0];
            while (v125 < v176[2])
            {
              v127 = &v175[144 * v125];
              v128 = v127[1];
              v129 = v127[2];
              v130 = v127[4];
              v199[1] = v127[3];
              v200 = v130;
              v198 = v128;
              v199[0] = v129;
              v131 = v127[5];
              v132 = v127[6];
              v133 = v127[8];
              v203 = v127[7];
              v204 = v133;
              v201 = v131;
              v202 = v132;
              v197 = *v127;
              ++v125;
              v134 = v123;
              v135 = *(v123 + 16);
              sub_1DAAD4CCC(&v197, &v189);
              v136 = v135 + 1;
              v137 = v174;
              do
              {
                if (!--v136)
                {
                  sub_1DAAD4D28(&v197);
                  goto LABEL_92;
                }

                v194 = v202;
                v195 = v203;
                v196 = v204;
                v191[0] = v199[0];
                v191[1] = v199[1];
                v192 = v200;
                v193 = v201;
                v189 = v197;
                v190 = v198;
                v137 += 56;
              }

              while ((sub_1DAC78658(&v189) & 1) != 0);
              v138 = swift_isUniquelyReferenced_nonNull_native();
              *&v180 = v126;
              if ((v138 & 1) == 0)
              {
                sub_1DAAA50F8(0, *(v126 + 16) + 1, 1);
                v126 = v180;
              }

              v140 = *(v126 + 16);
              v139 = *(v126 + 24);
              if (v140 >= v139 >> 1)
              {
                sub_1DAAA50F8((v139 > 1), v140 + 1, 1);
                v126 = v180;
              }

              *(v126 + 16) = v140 + 1;
              v141 = (v126 + 144 * v140);
              v141[2] = v197;
              v142 = v198;
              v143 = v199[0];
              v144 = v200;
              v141[5] = v199[1];
              v141[6] = v144;
              v141[3] = v142;
              v141[4] = v143;
              v145 = v201;
              v146 = v202;
              v147 = v204;
              v141[9] = v203;
              v141[10] = v147;
              v141[7] = v145;
              v141[8] = v146;
LABEL_92:
              v123 = v134;
              if (v125 == v124)
              {
                goto LABEL_115;
              }
            }

            goto LABEL_127;
          }

          v126 = MEMORY[0x1E69E7CC0];
LABEL_115:

          v176 = v126;
        }

        goto LABEL_27;
      }

      v165 = 0;
      v163 = *&v177[8];
      v164 = *v177;
LABEL_28:
      v31 = v173 + 1;
      if (v173 + 1 == v4)
      {
        if (v169 == 3 && (v165 & 1) == 0)
        {
          v153 = swift_allocObject();
          v154 = v163;
          *(v153 + 16) = v163;
          *(v153 + 64) = 5;
          v155 = sub_1DACB9674();

          v156 = v164;
          if (v155 < v164)
          {

            *&v197 = v156;
            *(&v197 + 1) = v154;
            BYTE9(v199[1]) = 3;
            MEMORY[0x1EEE9AC00](v157);
            v161 = &v197;
            v158 = sub_1DAB6AD68(sub_1DAB77304, v160, v3);
            sub_1DAB77014(&v197);
            *&v197 = v158;
            sub_1DAB6B824(v162);
          }
        }

        return;
      }

      goto LABEL_29;
    }

    ++v5;
    sub_1DAB77014(&v189);
    v6 += 64;
    if (v4 == v5)
    {
      v176 = sub_1DACB71E4();
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t StockNewsFeed.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_1DAB5916C(v2 + 24, v9);
  *a2 = a1;
  a2[1] = v6;
  a2[2] = v5;
  sub_1DAB5916C(v9, (a2 + 3));
  sub_1DACB71E4();
  sub_1DAB59344(v9, &v8);
  return sub_1DACB71E4();
}