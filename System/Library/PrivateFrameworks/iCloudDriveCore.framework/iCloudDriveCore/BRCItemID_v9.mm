@interface BRCItemID_v9
+ (id)newFromSqliteValue:(sqlite3_value *)value;
- (BRCItemID_v9)initWithRootObject:(RootItemObject *)object;
- (BRCItemID_v9)initWithUUID:(const char *)d;
- (BRCItemID_v9)initWithUUIDObject:(_UUIDItemObject_OLD *)object;
- (id)_initAsLibraryRootWithAppLibraryRowID:(id)d enclosureUUID:(id)iD;
- (id)itemIDString;
- (void)itemIDString;
- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index;
@end

@implementation BRCItemID_v9

- (id)itemIDString
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  p_kind = &self->_kind;
  kind = self->_kind;
  v5 = @"root";
  if (kind > 2)
  {
    switch(kind)
    {
      case 3:
        v6 = brc_bread_crumbs();
        v7 = brc_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [BRCItemID_v9 itemIDString];
        }

        break;
      case 5:
        goto LABEL_16;
      case 4:
        goto LABEL_8;
      default:
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [(BRCItemID_v9 *)p_kind itemIDString];
        }

        break;
    }

    v5 = 0;
    goto LABEL_16;
  }

  if (!kind)
  {
LABEL_8:
    uuid_unparse_upper(self->_uuid, v12);
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v12 length:36 encoding:4];
    goto LABEL_16;
  }

  if (kind != 1)
  {
    v5 = @"documents";
  }

LABEL_16:
  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BRCItemID_v9)initWithUUID:(const char *)d
{
  v5.receiver = self;
  v5.super_class = BRCItemID_v9;
  result = [(BRCItemID_v9 *)&v5 init];
  if (result)
  {
    result->_kind = 0;
    *result->_uuid = *d;
  }

  return result;
}

- (BRCItemID_v9)initWithRootObject:(RootItemObject *)object
{
  v9.receiver = self;
  v9.super_class = BRCItemID_v9;
  v4 = [(BRCItemID_v9 *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_kind = object->var0;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&object->var0 + 1)];
    appLibraryRowID = v5->_appLibraryRowID;
    v5->_appLibraryRowID = v6;

    if (object->var0 - 3 <= 0xFFFFFFFD)
    {
      [BRCItemID_v9 initWithRootObject:];
    }
  }

  return v5;
}

- (BRCItemID_v9)initWithUUIDObject:(_UUIDItemObject_OLD *)object
{
  v9.receiver = self;
  v9.super_class = BRCItemID_v9;
  v4 = [(BRCItemID_v9 *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_kind = object->var0;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&object->var0 + 1)];
    appLibraryRowID = v5->_appLibraryRowID;
    v5->_appLibraryRowID = v6;

    *v5->_uuid = *(&object->var1 + 1);
    if (object->var0 - 6 <= 0xFFFFFFFD)
    {
      [BRCItemID_v9 initWithUUIDObject:];
    }
  }

  return v5;
}

+ (id)newFromSqliteValue:(sqlite3_value *)value
{
  *&v28[13] = *MEMORY[0x277D85DE8];
  v4 = sqlite3_value_type(value);
  if (v4 == 5)
  {
    goto LABEL_10;
  }

  v5 = v4;
  if (v4 != 4)
  {
    v11 = sqlite3_value_text(value);
    v12 = sqlite3_value_bytes(value);
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v23 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:v12];
      v25 = 138412802;
      v26 = v23;
      v27 = 1024;
      *v28 = v5;
      v28[2] = 2112;
      *&v28[3] = v13;
      _os_log_fault_impl(&dword_223E7A000, v14, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unmigrated? invalid BRCItemID (%@) - %d%@", &v25, 0x1Cu);
    }

    goto LABEL_10;
  }

  v6 = sqlite3_value_blob(value);
  v7 = sqlite3_value_bytes(value);
  if (v7 == 16)
  {
    v8 = [BRCItemID_v9 alloc];
    v9 = *MEMORY[0x277D85DE8];

    return [(BRCItemID_v9 *)v8 initWithUUID:v6];
  }

  v16 = v7;
  if (v7 != 21)
  {
    if (v7 == 5)
    {
      v17 = [BRCItemID_v9 alloc];
      v18 = *MEMORY[0x277D85DE8];

      return [(BRCItemID_v9 *)v17 initWithRootObject:v6];
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v24 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v16];
      v25 = 138412546;
      v26 = v24;
      v27 = 2112;
      *v28 = v21;
      _os_log_fault_impl(&dword_223E7A000, v22, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid BRCItemID (%@)%@", &v25, 0x16u);
    }

LABEL_10:
    v15 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v19 = [BRCItemID_v9 alloc];
  v20 = *MEMORY[0x277D85DE8];

  return [(BRCItemID_v9 *)v19 initWithUUIDObject:v6];
}

- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v16, 0, 5);
  memset(v17, 0, 21);
  kind = self->_kind;
  if (kind > 2)
  {
    switch(kind)
    {
      case 3u:
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [BRCItemID_v9 itemIDString];
        }

        goto LABEL_19;
      case 4u:
        v17[0] = 4;
        *&v17[1] = [(BRCALRowID *)self->_appLibraryRowID intValue];
        if (!*&v17[1])
        {
          [BRCItemID_v9 sqliteBind:index:];
        }

        break;
      case 5u:
        v17[0] = 5;
        *&v17[1] = [(BRCALRowID *)self->_appLibraryRowID intValue];
        if (!*&v17[1])
        {
          [BRCItemID_v9 sqliteBind:index:];
        }

        break;
      default:
LABEL_17:
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [BRCItemID_v9 sqliteBind:index:];
        }

LABEL_19:

        sqlite3_bind_null(bind, index);
LABEL_27:
        v15 = *MEMORY[0x277D85DE8];
        return;
    }

    *&v17[5] = *self->_uuid;
    v11 = v17;
    bindCopy2 = bind;
    indexCopy2 = index;
    v14 = 21;
    goto LABEL_26;
  }

  if (self->_kind)
  {
    if (kind == 1)
    {
      LOBYTE(v16[0]) = 1;
      *(v16 + 1) = [(BRCALRowID *)self->_appLibraryRowID intValue];
      if (!*(v16 + 1))
      {
        [BRCItemID_v9 sqliteBind:index:];
      }

      goto LABEL_22;
    }

    if (kind == 2)
    {
      LOBYTE(v16[0]) = 2;
      *(v16 + 1) = [(BRCALRowID *)self->_appLibraryRowID intValue];
      if (!*(v16 + 1))
      {
        [BRCItemID_v9 sqliteBind:index:];
      }

LABEL_22:
      v11 = v16;
      bindCopy2 = bind;
      indexCopy2 = index;
      v14 = 5;
LABEL_26:
      sqlite3_bind_blob(bindCopy2, indexCopy2, v11, v14, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  v8 = *MEMORY[0x277D85DE8];

  sqlite3_bind_blob(bind, index, self->_uuid, 16, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)_initAsLibraryRootWithAppLibraryRowID:(id)d enclosureUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = BRCItemID_v9;
  v9 = [(BRCItemID_v9 *)&v18 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
LABEL_10:
    v13 = p_isa;
    goto LABEL_11;
  }

  if (!iDCopy)
  {
    v9->_kind = 1;
    goto LABEL_8;
  }

  v9->_kind = 4;
  if (_br_parseUUIDString())
  {
LABEL_8:
    objc_storeStrong(p_isa + 1, d);
    if (!dCopy || ![dCopy unsignedLongLongValue])
    {
      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"can't initialize library root with invalid library rowid %@", dCopy];
      objc_claimAutoreleasedReturnValue();
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [BRCItemID_v9 _initAsLibraryRootWithAppLibraryRowID:enclosureUUID:];
      }

      brc_append_system_info_to_message();
      uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCItemID_v9 _initAsLibraryRootWithAppLibraryRowID:enclosureUUID:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCDatabaseSchema.m", 338, uTF8String);
    }

    goto LABEL_10;
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [BRCItemID_v9 _initAsLibraryRootWithAppLibraryRowID:enclosureUUID:];
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)itemIDString
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *self;
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithRootObject:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: object->item_code == 1 || object->item_code == 2%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithUUIDObject:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: object->item_code == 4 || object->item_code == 5%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sqliteBind:index:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: uio.app_lib_rowid%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sqliteBind:index:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: uio.app_lib_rowid%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sqliteBind:index:.cold.4()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: rio.app_lib_rowid%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sqliteBind:index:.cold.5()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: rio.app_lib_rowid%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sqliteBind:index:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: unknown itemID kind%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initAsLibraryRootWithAppLibraryRowID:enclosureUUID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_initAsLibraryRootWithAppLibraryRowID:enclosureUUID:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_append_system_info_to_message();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v1, v2, "[CRIT] %@%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

@end