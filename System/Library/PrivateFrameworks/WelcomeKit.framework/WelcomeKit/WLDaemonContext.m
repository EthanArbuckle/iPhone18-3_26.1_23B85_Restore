@interface WLDaemonContext
+ (id)context:(id)a3;
+ (void)convertMKImportContext:(id)a3 toWLImportContext:(id)a4;
@end

@implementation WLDaemonContext

+ (id)context:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(WLContext);
  v65 = [v3 application];
  v87[0] = v65;
  v64 = [v4 application];
  v87[1] = v64;
  v63 = [NSArray arrayWithObjects:v87 count:2];
  v88[0] = v63;
  v62 = [v3 account];
  v86[0] = v62;
  v61 = [v4 account];
  v86[1] = v61;
  v60 = [NSArray arrayWithObjects:v86 count:2];
  v88[1] = v60;
  v59 = [v3 message];
  v85[0] = v59;
  v58 = [v4 message];
  v85[1] = v58;
  v57 = [NSArray arrayWithObjects:v85 count:2];
  v88[2] = v57;
  v56 = [v3 contact];
  v84[0] = v56;
  v55 = [v4 contact];
  v84[1] = v55;
  v54 = [NSArray arrayWithObjects:v84 count:2];
  v88[3] = v54;
  v53 = [v3 callHistory];
  v83[0] = v53;
  v52 = [v4 callHistory];
  v83[1] = v52;
  v51 = [NSArray arrayWithObjects:v83 count:2];
  v88[4] = v51;
  v50 = [v3 calendar];
  v82[0] = v50;
  v49 = [v4 calendar];
  v82[1] = v49;
  v48 = [NSArray arrayWithObjects:v82 count:2];
  v88[5] = v48;
  v47 = [v3 bookmark];
  v81[0] = v47;
  v46 = [v4 bookmark];
  v81[1] = v46;
  v45 = [NSArray arrayWithObjects:v81 count:2];
  v88[6] = v45;
  v44 = [v3 file];
  v80[0] = v44;
  v43 = [v4 file];
  v80[1] = v43;
  v42 = [NSArray arrayWithObjects:v80 count:2];
  v88[7] = v42;
  v41 = [v3 image];
  v79[0] = v41;
  v40 = [v4 image];
  v79[1] = v40;
  v39 = [NSArray arrayWithObjects:v79 count:2];
  v88[8] = v39;
  v38 = [v3 video];
  v78[0] = v38;
  v37 = [v4 video];
  v78[1] = v37;
  v36 = [NSArray arrayWithObjects:v78 count:2];
  v88[9] = v36;
  v35 = [v3 voiceMemo];
  v77[0] = v35;
  v34 = [v4 voiceMemo];
  v77[1] = v34;
  v33 = [NSArray arrayWithObjects:v77 count:2];
  v88[10] = v33;
  v32 = [v3 album];
  v76[0] = v32;
  v30 = [v4 album];
  v76[1] = v30;
  v29 = [NSArray arrayWithObjects:v76 count:2];
  v88[11] = v29;
  v28 = [v3 container];
  v75[0] = v28;
  v27 = [v4 container];
  v75[1] = v27;
  v26 = [NSArray arrayWithObjects:v75 count:2];
  v88[12] = v26;
  v25 = [v3 accessibilitySetting];
  v74[0] = v25;
  v24 = [v4 accessibilitySetting];
  v74[1] = v24;
  v23 = [NSArray arrayWithObjects:v74 count:2];
  v88[13] = v23;
  v22 = [v3 displaySetting];
  v73[0] = v22;
  v21 = [v4 displaySetting];
  v73[1] = v21;
  v5 = [NSArray arrayWithObjects:v73 count:2];
  v88[14] = v5;
  v6 = [v3 placeholder];
  v72[0] = v6;
  v7 = [v4 placeholder];
  v72[1] = v7;
  v8 = [NSArray arrayWithObjects:v72 count:2];
  v88[15] = v8;
  v9 = [v3 sim];
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

+ (void)convertMKImportContext:(id)a3 toWLImportContext:(id)a4
{
  v7 = a4;
  v5 = a3;
  [v7 setImportCount:{objc_msgSend(v5, "importCount")}];
  [v7 setImportErrorCount:{objc_msgSend(v5, "importErrorCount")}];
  v6 = [v5 size];

  [v7 setSize:v6];
}

@end