@interface PSSystemGraphMessageDeserializer
+ (void)deserializeProducedStridesWillChangeMessage:(id)a3 completion:(id)a4;
+ (void)deserializeProducibleStridesHaveChangedToMessage:(id)a3 completion:(id)a4;
@end

@implementation PSSystemGraphMessageDeserializer

+ (void)deserializeProducibleStridesHaveChangedToMessage:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAAC8];
  v6 = a4;
  v7 = a3;
  [v5 setClass:objc_opt_class() forClassName:@"PSExecutionSessionResourceWithStridesImpl"];
  v8 = xpc_dictionary_get_value(v7, "producible_strides");

  if (v8 && MEMORY[0x25F8C9F10](v8) == MEMORY[0x277D86458])
  {
    v11 = MEMORY[0x277CBEA90];
    bytes_ptr = xpc_data_get_bytes_ptr(v8);
    v9 = [v11 dataWithBytes:bytes_ptr length:xpc_data_get_length(v8)];
    v13 = MEMORY[0x277CCAAC8];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
    v24 = 0;
    v10 = [v13 unarchivedObjectOfClasses:v18 fromData:v9 error:&v24];
    v19 = v24;

    if (v19)
    {
      v20 = __PSSGLogSharedInstance();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v19 localizedDescription];
        v22 = [v21 cStringUsingEncoding:134217984];
        *buf = 136315138;
        v26 = v22;
        _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_ERROR, "Error decoding producible strides: %s", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v9 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "Error getting produced strides from PSSG XPC message.", buf, 2u);
    }

    v10 = 0;
  }

  v6[2](v6, v10);
  v23 = *MEMORY[0x277D85DE8];
}

+ (void)deserializeProducedStridesWillChangeMessage:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CCAAC8];
  v7 = a4;
  [v6 setClass:objc_opt_class() forClassName:@"PSExecutionSessionResourceWithStrideImpl"];
  v8 = xpc_dictionary_get_value(v5, "produced_strides");
  v9 = v8;
  if (v8 && MEMORY[0x25F8C9F10](v8) == MEMORY[0x277D86458])
  {
    v12 = MEMORY[0x277CBEA90];
    bytes_ptr = xpc_data_get_bytes_ptr(v9);
    v10 = [v12 dataWithBytes:bytes_ptr length:xpc_data_get_length(v9)];
    v14 = MEMORY[0x277CCAAC8];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    v29 = 0;
    v11 = [v14 unarchivedObjectOfClasses:v19 fromData:v10 error:&v29];
    v20 = v29;

    if (v20)
    {
      v21 = __PSSGLogSharedInstance();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v20 localizedDescription];
        v23 = [v22 cStringUsingEncoding:134217984];
        *buf = 136315138;
        v31 = v23;
        _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_ERROR, "Error decoding produced strides: %s", buf, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_ERROR, "Error getting produced strides from PSSG XPC message.", buf, 2u);
    }

    v11 = 0;
  }

  uint64 = xpc_dictionary_get_uint64(v5, "produced_strides_frameid");
  if (!uint64)
  {
    v25 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_ERROR, "Error getting produced strides frameID from PSSG XPC message.", buf, 2u);
    }
  }

  v26 = xpc_dictionary_get_BOOL(v5, "produced_strides_is_physical_frameid");
  v27 = xpc_dictionary_get_uint64(v5, "produced_strides_MSG_sync_id");
  v7[2](v7, v11, uint64, v26, v27);

  v28 = *MEMORY[0x277D85DE8];
}

@end