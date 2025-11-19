@interface SLDCollaborationFooterService
+ (id)sharedService;
+ (void)slotForModel:(id)a3 maxWidth:(double)a4 completion:(id)a5;
+ (void)slotForModelNeedingNameAndEmail:(id)a3 maxWidth:(double)a4 completion:(id)a5;
- (UISSlotMachine)footerViewSlotMachine;
- (id)slotMachineForViewIdentifier:(id)a3;
- (void)footerViewForModel:(id)a3 style:(id)a4 maxWidth:(double)a5 layerContextID:(unint64_t)a6 reply:(id)a7;
@end

@implementation SLDCollaborationFooterService

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    +[SLDCollaborationFooterService sharedService];
  }

  v3 = sharedService_sService;

  return v3;
}

uint64_t __46__SLDCollaborationFooterService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDCollaborationFooterService);
  v1 = sharedService_sService;
  sharedService_sService = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (UISSlotMachine)footerViewSlotMachine
{
  footerViewSlotMachine = self->_footerViewSlotMachine;
  if (!footerViewSlotMachine)
  {
    v4 = objc_alloc(MEMORY[0x277D777D0]);
    v5 = objc_alloc_init(SLDCollaborationFooterSlotDrawer);
    v6 = [v4 initWithSlotDrawer:v5 options:0];
    v7 = self->_footerViewSlotMachine;
    self->_footerViewSlotMachine = v6;

    footerViewSlotMachine = self->_footerViewSlotMachine;
  }

  return footerViewSlotMachine;
}

- (id)slotMachineForViewIdentifier:(id)a3
{
  v4 = [a3 tag];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(SLDCollaborationFooterService *)self footerViewSlotMachine];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)footerViewForModel:(id)a3 style:(id)a4 maxWidth:(double)a5 layerContextID:(unint64_t)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (a5 <= 0.0)
  {
    v18 = SLDaemonLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationFooterService footerViewForModel:v18 style:? maxWidth:? layerContextID:? reply:?];
    }

    v14[2](v14, 0);
  }

  else
  {
    v15 = [MEMORY[0x277CCAE80] currentConnection];
    v16 = objc_opt_class();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __88__SLDCollaborationFooterService_footerViewForModel_style_maxWidth_layerContextID_reply___block_invoke;
    v19[3] = &unk_278925ED0;
    v20 = v13;
    v21 = self;
    v22 = v15;
    v24 = a6;
    v23 = v14;
    v17 = v15;
    [v16 slotForModel:v12 maxWidth:v19 completion:a5];
  }
}

void __88__SLDCollaborationFooterService_footerViewForModel_style_maxWidth_layerContextID_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v4 resolvedStyleForStyle:v3];
  v5 = [*(a1 + 40) _viewIDForStyle:v7 tag:v4];

  [*(a1 + 40) _connection:*(a1 + 48) onlyNeedsViewWithIdentifier:v5];
  v6 = [*(a1 + 40) _remoteContentForViewIdentifier:v5 layerContextID:*(a1 + 64) connection:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
  [*(a1 + 40) _connectionTouchedView:v5];
}

+ (void)slotForModel:(id)a3 maxWidth:(double)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v8 type];
  if ((v10 - 1) < 2)
  {
    [a1 slotForModelNeedingNameAndEmail:v8 maxWidth:v9 completion:a4];
  }

  else
  {
    if (v10 == 3)
    {
      v11 = [v8 optionsSummary];
      v15 = [v8 metadata];
      v16 = [v15 initiatorNameComponents];

      if (v16)
      {
        v17 = objc_opt_class();
        v18 = [v8 metadata];
        v19 = [v18 initiatorNameComponents];
        v13 = [v17 nameFromNameComponents:v19];
      }

      else
      {
        v20 = SLDaemonLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v8 metadata];
          *buf = 138412290;
          v29 = v21;
          _os_log_impl(&dword_231772000, v20, OS_LOG_TYPE_DEFAULT, "Metadata has no initiator name components: %@", buf, 0xCu);
        }

        v13 = 0;
      }

      v22 = [v8 metadata];
      v14 = [v22 initiatorHandle];

      v12 = 0;
      if (v13 && v14)
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = SLFrameworkBundle();
        v25 = [v24 localizedStringForKey:@"SHARE_AS" value:&stru_28468DAB8 table:@"SocialLayer"];
        v12 = [v23 stringWithFormat:v25, v13, v14];
      }
    }

    else if (v10)
    {
      v13 = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = [v8 title];
      v12 = [v8 subtitle];
      v13 = 0;
      v14 = 0;
    }

    v26 = [[SLDCollaborationFooterSlotTag alloc] initWithTitle:v11 subtitle:v12 maxWidth:a4];
    v9[2](v9, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (void)slotForModelNeedingNameAndEmail:(id)a3 maxWidth:(double)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = SLDaemonLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_DEFAULT, "Beginning fetch of name and email", buf, 2u);
  }

  getCloudSharingClass();
  if (objc_opt_respondsToSelector())
  {
    CloudSharingClass = getCloudSharingClass();
    v11 = [v7 fileURL];
    v12 = [v7 containerSetupInfo];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__SLDCollaborationFooterService_slotForModelNeedingNameAndEmail_maxWidth_completion___block_invoke;
    v16[3] = &unk_278925EF8;
    v17 = v7;
    v19 = a4;
    v18 = v8;
    [CloudSharingClass userNameAndEmail:v11 containerSetupInfo:v12 completionHandler:v16];

    v13 = v17;
  }

  else
  {
    v14 = SLDaemonLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationFooterService slotForModelNeedingNameAndEmail:v14 maxWidth:? completion:?];
    }

    v13 = [v7 optionsSummary];
    v15 = [[SLDCollaborationFooterSlotTag alloc] initWithTitle:v13 subtitle:&stru_28468DAB8 maxWidth:a4];
    (*(v8 + 2))(v8, v15);
  }
}

void __85__SLDCollaborationFooterService_slotForModelNeedingNameAndEmail_maxWidth_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) optionsSummary];
  if (v8 && v7 && !v9)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = SLFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"SHARE_AS" value:&stru_28468DAB8 table:@"SocialLayer"];
    v14 = [v11 stringWithFormat:v13, v7, v8];
  }

  else
  {
    v15 = SLDaemonLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __85__SLDCollaborationFooterService_slotForModelNeedingNameAndEmail_maxWidth_completion___block_invoke_cold_1(v9, v15);
    }

    v14 = 0;
  }

  v16 = [[SLDCollaborationFooterSlotTag alloc] initWithTitle:v10 subtitle:v14 maxWidth:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

- (void)footerViewForModel:(uint64_t)a1 style:(NSObject *)a2 maxWidth:layerContextID:reply:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLDCollaborationFooterService: %p] 0.0 was provided for the max width of the requested view. This is undefined behavior and should be sanitized before invoking this xpc interface!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __85__SLDCollaborationFooterService_slotForModelNeedingNameAndEmail_maxWidth_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch name and email: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end