@interface WLDaemonContext
+ (id)context:(id)context;
+ (void)convertMKImportContext:(id)context toWLImportContext:(id)importContext;
@end

@implementation WLDaemonContext

+ (id)context:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(WLContext);
  application = [contextCopy application];
  v87[0] = application;
  application2 = [v4 application];
  v87[1] = application2;
  v63 = [NSArray arrayWithObjects:v87 count:2];
  v88[0] = v63;
  account = [contextCopy account];
  v86[0] = account;
  account2 = [v4 account];
  v86[1] = account2;
  v60 = [NSArray arrayWithObjects:v86 count:2];
  v88[1] = v60;
  message = [contextCopy message];
  v85[0] = message;
  message2 = [v4 message];
  v85[1] = message2;
  v57 = [NSArray arrayWithObjects:v85 count:2];
  v88[2] = v57;
  contact = [contextCopy contact];
  v84[0] = contact;
  contact2 = [v4 contact];
  v84[1] = contact2;
  v54 = [NSArray arrayWithObjects:v84 count:2];
  v88[3] = v54;
  callHistory = [contextCopy callHistory];
  v83[0] = callHistory;
  callHistory2 = [v4 callHistory];
  v83[1] = callHistory2;
  v51 = [NSArray arrayWithObjects:v83 count:2];
  v88[4] = v51;
  calendar = [contextCopy calendar];
  v82[0] = calendar;
  calendar2 = [v4 calendar];
  v82[1] = calendar2;
  v48 = [NSArray arrayWithObjects:v82 count:2];
  v88[5] = v48;
  bookmark = [contextCopy bookmark];
  v81[0] = bookmark;
  bookmark2 = [v4 bookmark];
  v81[1] = bookmark2;
  v45 = [NSArray arrayWithObjects:v81 count:2];
  v88[6] = v45;
  file = [contextCopy file];
  v80[0] = file;
  file2 = [v4 file];
  v80[1] = file2;
  v42 = [NSArray arrayWithObjects:v80 count:2];
  v88[7] = v42;
  image = [contextCopy image];
  v79[0] = image;
  image2 = [v4 image];
  v79[1] = image2;
  v39 = [NSArray arrayWithObjects:v79 count:2];
  v88[8] = v39;
  video = [contextCopy video];
  v78[0] = video;
  video2 = [v4 video];
  v78[1] = video2;
  v36 = [NSArray arrayWithObjects:v78 count:2];
  v88[9] = v36;
  voiceMemo = [contextCopy voiceMemo];
  v77[0] = voiceMemo;
  voiceMemo2 = [v4 voiceMemo];
  v77[1] = voiceMemo2;
  v33 = [NSArray arrayWithObjects:v77 count:2];
  v88[10] = v33;
  album = [contextCopy album];
  v76[0] = album;
  album2 = [v4 album];
  v76[1] = album2;
  v29 = [NSArray arrayWithObjects:v76 count:2];
  v88[11] = v29;
  container = [contextCopy container];
  v75[0] = container;
  container2 = [v4 container];
  v75[1] = container2;
  v26 = [NSArray arrayWithObjects:v75 count:2];
  v88[12] = v26;
  accessibilitySetting = [contextCopy accessibilitySetting];
  v74[0] = accessibilitySetting;
  accessibilitySetting2 = [v4 accessibilitySetting];
  v74[1] = accessibilitySetting2;
  v23 = [NSArray arrayWithObjects:v74 count:2];
  v88[13] = v23;
  displaySetting = [contextCopy displaySetting];
  v73[0] = displaySetting;
  displaySetting2 = [v4 displaySetting];
  v73[1] = displaySetting2;
  v5 = [NSArray arrayWithObjects:v73 count:2];
  v88[14] = v5;
  placeholder = [contextCopy placeholder];
  v72[0] = placeholder;
  placeholder2 = [v4 placeholder];
  v72[1] = placeholder2;
  v8 = [NSArray arrayWithObjects:v72 count:2];
  v88[15] = v8;
  v9 = [contextCopy sim];
  v71[0] = v9;
  v10 = [v4 sim];
  v71[1] = v10;
  v11 = [NSArray arrayWithObjects:v71 count:2];
  v88[16] = v11;
  v31 = [NSArray arrayWithObjects:v88 count:17];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v12 = v31;
  v13 = [v12 countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v67;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v67 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v66 + 1) + 8 * i);
        v18 = [v17 objectAtIndexedSubscript:0];
        v19 = [v17 objectAtIndexedSubscript:1];
        [WLDaemonContext convertMKImportContext:v18 toWLImportContext:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v14);
  }

  return v4;
}

+ (void)convertMKImportContext:(id)context toWLImportContext:(id)importContext
{
  importContextCopy = importContext;
  contextCopy = context;
  [importContextCopy setImportCount:{objc_msgSend(contextCopy, "importCount")}];
  [importContextCopy setImportErrorCount:{objc_msgSend(contextCopy, "importErrorCount")}];
  v6 = [contextCopy size];

  [importContextCopy setSize:v6];
}

@end