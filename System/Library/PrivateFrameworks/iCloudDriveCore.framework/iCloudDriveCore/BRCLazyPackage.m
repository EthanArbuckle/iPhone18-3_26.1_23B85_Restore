@interface BRCLazyPackage
- (BOOL)addItem:(id)a3 error:(id *)a4;
- (BRCLazyPackage)initWithRegistry:(id)a3 stageID:(id)a4 name:(id)a5 boundaryKey:(id)a6;
- (unint64_t)itemCount;
@end

@implementation BRCLazyPackage

- (BRCLazyPackage)initWithRegistry:(id)a3 stageID:(id)a4 name:(id)a5 boundaryKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = BRCLazyPackage;
  v14 = [(BRCLazyPackage *)&v23 init];
  registry = v14->_registry;
  v14->_registry = v10;
  v16 = v10;

  stageID = v14->_stageID;
  v14->_stageID = v11;
  v18 = v11;

  name = v14->_name;
  v14->_name = v12;
  v20 = v12;

  boundaryKey = v14->_boundaryKey;
  v14->_boundaryKey = v13;

  return v14;
}

- (BOOL)addItem:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  package = self->_package;
  if (!package)
  {
    v8 = [(BRCStageRegistry *)self->_registry createURLForUploadWithStageID:self->_stageID name:self->_name];
    boundaryKey = self->_boundaryKey;
    v30 = 0;
    v14 = [MEMORY[0x277CBC538] br_packageWithBoundaryKey:boundaryKey error:&v30];
    v15 = v30;
    v16 = self->_package;
    self->_package = v14;

    v17 = self->_package;
    if (v17)
    {
      v29 = v15;
      v18 = [(CKPackage *)v17 anchorAtURL:v8 error:&v29];
      v19 = v29;

      if (v18)
      {

        package = self->_package;
        goto LABEL_2;
      }

      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self->_package;
        v28 = [v8 path];
        *buf = 138413058;
        v32 = v27;
        v33 = 2112;
        v34 = v28;
        v35 = 2112;
        v36 = v19;
        v37 = 2112;
        v38 = v25;
        _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to anchor package %@ at %@: %@%@", buf, 0x2Au);
      }

      v15 = v19;
      if (!a4)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, 0x90u))
      {
        [BRCLazyPackage addItem:error:];
      }

      if (!a4)
      {
        goto LABEL_14;
      }
    }

    v22 = v15;
    *a4 = v15;
    goto LABEL_14;
  }

LABEL_2:
  v8 = [(CKPackage *)package addItem:v6];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      [BRCLazyPackage addItem:error:];
    }

    if (a4)
    {
      v12 = v8;
      v9 = 0;
      *a4 = v8;
      goto LABEL_16;
    }

LABEL_15:
    v9 = 0;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unint64_t)itemCount
{
  result = self->_package;
  if (result)
  {
    return [result itemCount];
  }

  return result;
}

- (void)addItem:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Failed to add package item: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addItem:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Failed to create package: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end