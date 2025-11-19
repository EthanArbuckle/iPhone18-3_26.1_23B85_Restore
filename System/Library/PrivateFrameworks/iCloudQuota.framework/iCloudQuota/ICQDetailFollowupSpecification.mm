@interface ICQDetailFollowupSpecification
@end

@implementation ICQDetailFollowupSpecification

void __89___ICQDetailFollowupSpecification_postFollowupWithController_replaceExisting_completion___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 key];
  v6 = [v3 titleWithKey:v5];
  v7 = [v4 wordsToReplace];
  v42 = [_ICQHelperFunctions replaceWordsIn:v6 with:v7];

  v8 = *(a1 + 32);
  v9 = [v4 key];
  v10 = [v8 subTitleWithKey:v9];
  v11 = [v4 wordsToReplace];
  v12 = [_ICQHelperFunctions replaceWordsIn:v10 with:v11];

  v13 = *(a1 + 32);
  v14 = [v4 key];
  v15 = [v13 mesgWithKey:v14];
  v16 = [v4 wordsToReplace];
  v17 = [_ICQHelperFunctions replaceWordsIn:v15 with:v16];

  v18 = [*(a1 + 32) followupTitleTemplates];
  v19 = [v4 key];
  v20 = [_ICQHelperFunctions stringFromTemplates:v18 key:v19];
  v21 = [v4 wordsToReplace];
  v22 = [_ICQHelperFunctions replaceWordsIn:v20 with:v21];

  v23 = [*(a1 + 32) followupMesgTemplates];
  v24 = [v4 key];
  v25 = [_ICQHelperFunctions stringFromTemplates:v23 key:v24];
  v26 = [v4 wordsToReplace];

  v27 = [_ICQHelperFunctions replaceWordsIn:v25 with:v26];

  if ([v42 length])
  {
    [*(a1 + 32) setNoteTitle:v42];
  }

  if ([v12 length])
  {
    [*(a1 + 32) setNoteSubTitle:v12];
  }

  if ([v17 length])
  {
    [*(a1 + 32) setNoteMessage:v17];
  }

  if ([v22 length])
  {
    [*(a1 + 32) setTitle:v22];
  }

  if ([v27 length])
  {
    [*(a1 + 32) setMessage:v27];
  }

  v28 = _ICQGetLogSystem();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [*(a1 + 32) noteTitle];
    *buf = 138412290;
    v45 = v29;
    _os_log_impl(&dword_275572000, v28, OS_LOG_TYPE_DEFAULT, "lockScreenTitle = %@", buf, 0xCu);
  }

  v30 = _ICQGetLogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [*(a1 + 32) noteSubTitle];
    *buf = 138412290;
    v45 = v31;
    _os_log_impl(&dword_275572000, v30, OS_LOG_TYPE_DEFAULT, "lockScreenSubTitle = %@", buf, 0xCu);
  }

  v32 = _ICQGetLogSystem();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [*(a1 + 32) noteMessage];
    *buf = 138412290;
    v45 = v33;
    _os_log_impl(&dword_275572000, v32, OS_LOG_TYPE_DEFAULT, "lockScreenMessage = %@", buf, 0xCu);
  }

  v34 = _ICQGetLogSystem();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [*(a1 + 32) title];
    *buf = 138412290;
    v45 = v35;
    _os_log_impl(&dword_275572000, v34, OS_LOG_TYPE_DEFAULT, "followupTitle = %@", buf, 0xCu);
  }

  v36 = _ICQGetLogSystem();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [*(a1 + 32) message];
    *buf = 138412290;
    v45 = v37;
    _os_log_impl(&dword_275572000, v36, OS_LOG_TYPE_DEFAULT, "followupMessage = %@", buf, 0xCu);
  }

  v38 = *(a1 + 40);
  v39 = *(a1 + 56);
  v40 = *(a1 + 48);
  v43.receiver = *(a1 + 32);
  v43.super_class = _ICQDetailFollowupSpecification;
  objc_msgSendSuper2(&v43, sel_postFollowupWithController_replaceExisting_completion_, v38, v39, v40);

  v41 = *MEMORY[0x277D85DE8];
}

@end