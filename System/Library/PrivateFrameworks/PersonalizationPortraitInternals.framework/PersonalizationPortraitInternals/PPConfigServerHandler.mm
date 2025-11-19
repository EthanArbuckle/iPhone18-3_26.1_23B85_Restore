@interface PPConfigServerHandler
- (void)assetVersionWithCompletion:(id)a3;
- (void)readableTrialTreatmentsMappingWithCompletion:(id)a3;
- (void)variantNameWithCompletion:(id)a3;
@end

@implementation PPConfigServerHandler

- (void)readableTrialTreatmentsMappingWithCompletion:(id)a3
{
  v3 = a3;
  v4 = pp_default_signpost_handle();
  v5 = os_signpost_id_generate(v4);

  v6 = pp_default_signpost_handle();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PPConfigServer.readableTrialTreatmentsMapping", "", buf, 2u);
  }

  v8 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPConfigServer: readableTrialTreatmentsMapping", v14, 2u);
  }

  v9 = +[PPTrialWrapper sharedInstance];
  v10 = [v9 readableTreatmentsMapping];

  v11 = pp_default_signpost_handle();
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v5, "PPConfigServer.readableTrialTreatmentsMapping", "", v13, 2u);
  }

  v3[2](v3, v10, 0);
}

- (void)variantNameWithCompletion:(id)a3
{
  v3 = a3;
  v4 = pp_default_signpost_handle();
  v5 = os_signpost_id_generate(v4);

  v6 = pp_default_signpost_handle();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PPConfigServer.variantName", "", buf, 2u);
  }

  v8 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPConfigServer: variantName", v14, 2u);
  }

  v9 = +[PPConfiguration sharedInstance];
  v10 = [v9 portraitVariantName];

  v11 = pp_default_signpost_handle();
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v5, "PPConfigServer.variantName", "", v13, 2u);
  }

  v3[2](v3, v10, 0);
}

- (void)assetVersionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = pp_default_signpost_handle();
  v5 = os_signpost_id_generate(v4);

  v6 = pp_default_signpost_handle();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PPConfigServer.assetVersion", "", buf, 2u);
  }

  v8 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPConfigServer: assetVersion", v12, 2u);
  }

  v9 = pp_default_signpost_handle();
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v10, OS_SIGNPOST_INTERVAL_END, v5, "PPConfigServer.assetVersion", "", v11, 2u);
  }

  (*(v3 + 2))(v3, 0, 0);
}

@end