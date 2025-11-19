@interface TXMain
- (TXMain)init;
- (void)applicationDidFinishLaunching;
@end

@implementation TXMain

- (TXMain)init
{
  v70.receiver = self;
  v70.super_class = TXMain;
  v2 = [(TXMain *)&v70 init];
  v3 = v2;
  if (v2)
  {
    v4 = theApp;
    Instance = TXTextLayout_Factory::getInstance(v2);
    v6 = OZFactories::addFactory(*(v4 + 32), Instance);
    v7 = theApp;
    v8 = TXTextInput_Factory::getInstance(v6);
    v9 = OZFactories::addFactory(*(v7 + 32), v8);
    v10 = theApp;
    v11 = TXTextBehavior_Factory::getInstance(v9);
    v12 = OZFactories::addFactory(*(v10 + 32), v11);
    v13 = theApp;
    v14 = TXTextTrackingBehavior_Factory::getInstance(v12);
    v15 = OZFactories::addFactory(*(v13 + 32), v14);
    v16 = theApp;
    v17 = TXTypeOnBehavior_Factory::getInstance(v15);
    v18 = OZFactories::addFactory(*(v16 + 32), v17);
    v19 = theApp;
    v20 = TXCrawlLeftBehavior_Factory::getInstance(v18);
    v21 = OZFactories::addFactory(*(v19 + 32), v20);
    v22 = theApp;
    v23 = TXCrawlRightBehavior_Factory::getInstance(v21);
    v24 = OZFactories::addFactory(*(v22 + 32), v23);
    v25 = theApp;
    v26 = TXScrollUpBehavior_Factory::getInstance(v24);
    v27 = OZFactories::addFactory(*(v25 + 32), v26);
    v28 = theApp;
    v29 = TXScrollDownBehavior_Factory::getInstance(v27);
    v30 = OZFactories::addFactory(*(v28 + 32), v29);
    v31 = theApp;
    v32 = TXTextSequenceBehavior_Factory::getInstance(v30);
    v33 = OZFactories::addFactory(*(v31 + 32), v32);
    v34 = theApp;
    v35 = TXSequenceBehavior_Factory::getInstance(v33);
    v36 = OZFactories::addFactory(*(v34 + 32), v35);
    v37 = theApp;
    v38 = TXTextScrollBehavior_Factory::getInstance(v36);
    v39 = OZFactories::addFactory(*(v37 + 32), v38);
    v40 = theApp;
    v41 = TXTextStyle_Factory::getInstance(v39);
    v42 = OZFactories::addFactory(*(v40 + 32), v41);
    v43 = theApp;
    v44 = TXNumberGenerator_Factory::getInstance(v42);
    v45 = OZFactories::addFactory(*(v43 + 32), v44);
    v46 = theApp;
    v47 = TXTimecodeGenerator_Factory::getInstance(v45);
    v48 = OZFactories::addFactory(*(v46 + 32), v47);
    v49 = theApp;
    v50 = TXTimeDateGenerator_Factory::getInstance(v48);
    v51 = OZFactories::addFactory(*(v49 + 32), v50);
    v52 = theApp;
    v53 = TXTextFromFileGenerator_Factory::getInstance(v51);
    v54 = OZFactories::addFactory(*(v52 + 32), v53);
    v55 = theApp;
    v56 = TXTranscriptionGenerator_Factory::getInstance(v54);
    v57 = OZFactories::addFactory(*(v55 + 32), v56);
    v58 = theApp;
    v59 = TXTextGenerator_Factory::getInstance(v57);
    v60 = OZFactories::addFactory(*(v58 + 32), v59);
    v61 = theApp;
    v62 = TXChannelString_Factory::getInstance(v60);
    v63 = OZFactories::addFactory(*(v61 + 32), v62);
    v64 = theApp;
    v65 = TXChannelFont_Factory::getInstance(v63);
    v66 = OZFactories::addFactory(*(v64 + 32), v65);
    v67 = theApp;
    v68 = TXChannelAlignment_Factory::getInstance(v66);
    OZFactories::addFactory(*(v67 + 32), v68);
  }

  return v3;
}

- (void)applicationDidFinishLaunching
{
  global_queue = dispatch_get_global_queue(25, 0);

  dispatch_async(global_queue, &__block_literal_global_49);
}

@end