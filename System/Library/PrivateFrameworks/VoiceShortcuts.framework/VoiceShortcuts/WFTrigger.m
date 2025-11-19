@interface WFTrigger
@end

@implementation WFTrigger

void __51__WFTrigger_PowerLog__powerLogEventKindForTrigger___block_invoke()
{
  v44[20] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v42 = NSStringFromClass(v0);
  v43[0] = v42;
  v44[0] = &unk_2845ECF78;
  v1 = objc_opt_class();
  v41 = NSStringFromClass(v1);
  v43[1] = v41;
  v44[1] = &unk_2845ECF90;
  v2 = objc_opt_class();
  v40 = NSStringFromClass(v2);
  v43[2] = v40;
  v44[2] = &unk_2845ECFA8;
  v3 = objc_opt_class();
  v39 = NSStringFromClass(v3);
  v43[3] = v39;
  v44[3] = &unk_2845ECFC0;
  v4 = objc_opt_class();
  v38 = NSStringFromClass(v4);
  v43[4] = v38;
  v44[4] = &unk_2845ECFD8;
  v5 = objc_opt_class();
  v37 = NSStringFromClass(v5);
  v43[5] = v37;
  v44[5] = &unk_2845ECFF0;
  v6 = objc_opt_class();
  v36 = NSStringFromClass(v6);
  v43[6] = v36;
  v44[6] = &unk_2845ED008;
  v7 = objc_opt_class();
  v35 = NSStringFromClass(v7);
  v43[7] = v35;
  v44[7] = &unk_2845ED020;
  v8 = objc_opt_class();
  v34 = NSStringFromClass(v8);
  v43[8] = v34;
  v44[8] = &unk_2845ED038;
  v9 = objc_opt_class();
  v33 = NSStringFromClass(v9);
  v43[9] = v33;
  v44[9] = &unk_2845ED050;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v43[10] = v11;
  v44[10] = &unk_2845ED068;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v43[11] = v13;
  v44[11] = &unk_2845ED080;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v43[12] = v15;
  v44[12] = &unk_2845ED098;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v43[13] = v17;
  v44[13] = &unk_2845ED0B0;
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v43[14] = v19;
  v44[14] = &unk_2845ED0C8;
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v43[15] = v21;
  v44[15] = &unk_2845ED0E0;
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v43[16] = v23;
  v44[16] = &unk_2845ED0F8;
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v43[17] = v25;
  v44[17] = &unk_2845ED110;
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v43[18] = v27;
  v44[18] = &unk_2845ED128;
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v43[19] = v29;
  v44[19] = &unk_2845ED140;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:20];
  v31 = powerLogEventKindForTrigger__eventKinds;
  powerLogEventKindForTrigger__eventKinds = v30;

  v32 = *MEMORY[0x277D85DE8];
}

@end