@interface SiriCoreSQLiteDatabase
- (BOOL)alterTableWithName:(id)name addColumn:(id)column error:(id *)error;
- (BOOL)alterTableWithName:(id)name renameTo:(id)to error:(id *)error;
- (BOOL)checkpointWriteAheadLogWithError:(id *)error;
- (BOOL)closeWithError:(id *)error;
- (BOOL)createIndex:(id)index error:(id *)error;
- (BOOL)createTable:(id)table error:(id *)error;
- (BOOL)deleteFromTableWithName:(id)name indexedBy:(id)by criterion:(id)criterion error:(id *)error;
- (BOOL)dropIndexWithName:(id)name error:(id *)error;
- (BOOL)dropTableWithName:(id)name error:(id *)error;
- (BOOL)executeQuery:(id)query error:(id *)error;
- (BOOL)executeQueryString:(id)string error:(id *)error;
- (BOOL)insertIntoTableWithName:(id)name record:(id)record error:(id *)error;
- (BOOL)insertIntoTableWithName:(id)name valueMap:(id)map error:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)releaseSavepointWithName:(id)name error:(id *)error;
- (BOOL)rollbackToSavepointWithName:(id)name error:(id *)error;
- (BOOL)savepointWithName:(id)name error:(id *)error;
- (BOOL)updateTableWithName:(id)name columnName:(id)columnName columnValue:(id)value criterion:(id)criterion error:(id *)error;
- (BOOL)updateTableWithName:(id)name valueMap:(id)map criterion:(id)criterion error:(id *)error;
- (SiriCoreSQLiteDatabase)initWithPath:(id)path dataProtectionClass:(int64_t)class options:(int64_t)options;
- (id)executeQuery:(id)query;
- (id)fetchTableNamesWithError:(id *)error;
- (id)fetchTableWithName:(id)name error:(id *)error;
- (id)selectRecordsFromTableWithName:(id)name columnNames:(id)names behavior:(int64_t)behavior indexedBy:(id)by criterion:(id)criterion order:(id)order range:(id)range recordBuilder:(id)self0 error:(id *)self1;
- (id)selectValueMapsFromTableWithName:(id)name columnNames:(id)names behavior:(int64_t)behavior indexedBy:(id)by criterion:(id)criterion order:(id)order range:(id)range error:(id *)self0;
- (id)selectValueTuplesFromTableWithName:(id)name columnNames:(id)names behavior:(int64_t)behavior indexedBy:(id)by criterion:(id)criterion order:(id)order range:(id)range error:(id *)self0;
- (id)selectValuesFromTableWithName:(id)name columnName:(id)columnName behavior:(int64_t)behavior indexedBy:(id)by criterion:(id)criterion order:(id)order range:(id)range error:(id *)self0;
- (unint64_t)countValuesInTableWithName:(id)name columnName:(id)columnName behavior:(int64_t)behavior indexedBy:(id)by criterion:(id)criterion range:(id)range error:(id *)error;
@end

@implementation SiriCoreSQLiteDatabase

- (BOOL)checkpointWriteAheadLogWithError:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0B0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = "[SiriCoreSQLiteDatabase checkpointWriteAheadLogWithError:]";
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = sqlite3_wal_checkpoint_v2(self->_handle, 0, 1, 0, 0);
  v7 = v6;
  if (error && v6)
  {
    v8 = sqlite3_extended_errcode(self->_handle);
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA170];
    v20[0] = self->_path;
    v11 = *MEMORY[0x277CCA7E8];
    v18 = v10;
    v19 = v11;
    v12 = SiriCoreSQLiteDatabaseCreateSQLiteAPIErrorFromResultCode(v7, v8);
    v20[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v18 count:2];
    v14 = [v9 errorWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:2 userInfo:{v13, v18, v19, v20[0]}];

    v15 = v14;
    *error = v14;
  }

  result = v7 == 0;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)executeQueryString:(id)string error:(id *)error
{
  stringCopy = string;
  v7 = [[SiriCoreSQLiteQuery alloc] initWithString:stringCopy statement:0 parameters:0 recordBuilder:0 options:0];

  LOBYTE(error) = [(SiriCoreSQLiteDatabase *)self executeQuery:v7 error:error];
  return error;
}

- (BOOL)executeQuery:(id)query error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v5 = [(SiriCoreSQLiteDatabase *)self executeQuery:query];
  error = [v5 error];
  if (error && error)
  {
    error = error;
    *error = error;
  }

  v7 = error == 0;

  return v7;
}

- (id)executeQuery:(id)query
{
  v170 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v5 = mach_absolute_time();
  ppStmt = 0;
  if (!self->_handle)
  {
    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    path = self->_path;
    v161 = *MEMORY[0x277CCA170];
    v162 = path;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
    v13 = [v10 initWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:6 userInfo:v12];

    v14 = [[SiriCoreSQLiteQueryResult alloc] initWithQuery:queryCopy beginMachTime:v5 endMachTime:mach_absolute_time() statement:0 columnNameTuple:0 columnValueTuples:0 columnValuesMap:0 rowValueTuples:0 rowValueMaps:0 records:0 error:v13];
    if (!v13)
    {
      goto LABEL_210;
    }

    v15 = *MEMORY[0x277CEF0B0];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_210;
    }

LABEL_14:
    *buf = 136315394;
    *&buf[4] = "[SiriCoreSQLiteDatabase executeQuery:]";
    v164 = 2112;
    v165 = v14;
    _os_log_error_impl(&dword_2669D1000, v15, OS_LOG_TYPE_ERROR, "%s result = %@", buf, 0x16u);
    goto LABEL_210;
  }

  if (!queryCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = self->_path;
    v159 = *MEMORY[0x277CCA170];
    v160 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
    v13 = [v16 initWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:7 userInfo:v18];

    v14 = [[SiriCoreSQLiteQueryResult alloc] initWithQuery:0 beginMachTime:v5 endMachTime:mach_absolute_time() statement:0 columnNameTuple:0 columnValueTuples:0 columnValuesMap:0 rowValueTuples:0 rowValueMaps:0 records:0 error:v13];
    if (!v13)
    {
      goto LABEL_210;
    }

    v15 = *MEMORY[0x277CEF0B0];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_210;
    }

    goto LABEL_14;
  }

  statement = [queryCopy statement];
  v7 = statement;
  v132 = v5;
  selfCopy = self;
  if (!statement)
  {
    v9 = 0;
    goto LABEL_16;
  }

  impl = [statement impl];
  ppStmt = impl;
  if (!impl)
  {
    goto LABEL_8;
  }

  v9 = impl;
  if (sqlite3_reset(impl) || sqlite3_clear_bindings(v9))
  {
    ppStmt = 0;
LABEL_8:

    v9 = 0;
    v7 = 0;
  }

LABEL_16:
  options = [queryCopy options];
  v20 = 0;
  if (!v9 && (options & 0x10000) != 0)
  {
    string = [queryCopy string];
    if (!string)
    {
      v25 = objc_alloc(MEMORY[0x277CCA9B8]);
      v26 = self->_path;
      v157[0] = *MEMORY[0x277CCA170];
      v157[1] = @"query";
      v158[0] = v26;
      v158[1] = queryCopy;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v158 forKeys:v157 count:2];
      v13 = [v25 initWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:8 userInfo:v27];

      v14 = [[SiriCoreSQLiteQueryResult alloc] initWithQuery:queryCopy beginMachTime:v5 endMachTime:mach_absolute_time() statement:0 columnNameTuple:0 columnValueTuples:0 columnValuesMap:0 rowValueTuples:0 rowValueMaps:0 records:0 error:v13];
      if (v13)
      {
        v28 = *MEMORY[0x277CEF0B0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[SiriCoreSQLiteDatabase executeQuery:]";
          v164 = 2112;
          v165 = v14;
          _os_log_error_impl(&dword_2669D1000, v28, OS_LOG_TYPE_ERROR, "%s result = %@", buf, 0x16u);
        }
      }

      v29 = 0;
      goto LABEL_209;
    }

    v22 = string;
    v23 = [(NSCache *)selfCopy->_cachedSQLiteStatementsByQueryString objectForKey:string];
    v20 = v23;
    if (v23)
    {
      impl2 = [v23 impl];
      ppStmt = impl2;
      if (impl2)
      {
        v9 = impl2;
        if (!sqlite3_reset(impl2) && !sqlite3_clear_bindings(v9))
        {
          goto LABEL_30;
        }

        ppStmt = 0;
      }

      v9 = 0;
      v20 = 0;
    }

    else
    {
      v9 = 0;
    }

LABEL_30:
  }

  if (!v9)
  {
    string2 = [queryCopy string];
    if (string2)
    {
      v38 = string2;
      v39 = sqlite3_prepare_v2(selfCopy->_handle, [string2 UTF8String], 0x80000000, &ppStmt, 0);
      if (!v39)
      {
        v84 = [SiriCoreSQLiteStatement alloc];
        v85 = [(SiriCoreSQLiteStatement *)v84 initWithImpl:ppStmt finalizeWhenDone:1];

        v130 = v85;
        goto LABEL_33;
      }

      v40 = v39;
      v41 = v38;
      v42 = sqlite3_extended_errcode(selfCopy->_handle);
      if (ppStmt)
      {
        sqlite3_finalize(ppStmt);
        ppStmt = 0;
      }

      v43 = objc_alloc(MEMORY[0x277CCA9B8]);
      v44 = selfCopy->_path;
      v153[0] = *MEMORY[0x277CCA170];
      v153[1] = @"query";
      v154[0] = v44;
      v154[1] = queryCopy;
      v153[2] = *MEMORY[0x277CCA7E8];
      v45 = SiriCoreSQLiteDatabaseCreateSQLiteAPIErrorFromResultCode(v40, v42);
      v154[2] = v45;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v153 count:3];
      v13 = [v43 initWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:2 userInfo:v46];

      v14 = [[SiriCoreSQLiteQueryResult alloc] initWithQuery:queryCopy beginMachTime:v5 endMachTime:mach_absolute_time() statement:0 columnNameTuple:0 columnValueTuples:0 columnValuesMap:0 rowValueTuples:0 rowValueMaps:0 records:0 error:v13];
      if (!v13)
      {
        v29 = 0;
        v36 = v41;
        goto LABEL_208;
      }

      v47 = *MEMORY[0x277CEF0B0];
      v36 = v41;
      if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[SiriCoreSQLiteDatabase executeQuery:]";
        v164 = 2112;
        v165 = v14;
        _os_log_error_impl(&dword_2669D1000, v47, OS_LOG_TYPE_ERROR, "%s result = %@", buf, 0x16u);
      }
    }

    else
    {
      v66 = objc_alloc(MEMORY[0x277CCA9B8]);
      v67 = selfCopy->_path;
      v155[0] = *MEMORY[0x277CCA170];
      v155[1] = @"query";
      v156[0] = v67;
      v156[1] = queryCopy;
      v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:2];
      v13 = [v66 initWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:8 userInfo:v68];

      v14 = [[SiriCoreSQLiteQueryResult alloc] initWithQuery:queryCopy beginMachTime:v5 endMachTime:mach_absolute_time() statement:0 columnNameTuple:0 columnValueTuples:0 columnValuesMap:0 rowValueTuples:0 rowValueMaps:0 records:0 error:v13];
      if (v13)
      {
        v69 = *MEMORY[0x277CEF0B0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[SiriCoreSQLiteDatabase executeQuery:]";
          v164 = 2112;
          v165 = v14;
          _os_log_error_impl(&dword_2669D1000, v69, OS_LOG_TYPE_ERROR, "%s result = %@", buf, 0x16u);
        }
      }

      v36 = 0;
    }

    v29 = 0;
    goto LABEL_208;
  }

  v130 = 0;
LABEL_33:
  parameters = [queryCopy parameters];
  v30 = [parameters count];
  v31 = sqlite3_bind_parameter_count(ppStmt);
  if ((v31 & 0x80000000) == 0 && v31 != v30)
  {
    v32 = objc_alloc(MEMORY[0x277CCA9B8]);
    v33 = selfCopy->_path;
    v151[0] = *MEMORY[0x277CCA170];
    v151[1] = @"query";
    v152[0] = v33;
    v152[1] = queryCopy;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:v151 count:2];
    v13 = [v32 initWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:9 userInfo:v34];

    v14 = [[SiriCoreSQLiteQueryResult alloc] initWithQuery:queryCopy beginMachTime:v5 endMachTime:mach_absolute_time() statement:0 columnNameTuple:0 columnValueTuples:0 columnValuesMap:0 rowValueTuples:0 rowValueMaps:0 records:0 error:v13];
    if (v13)
    {
      v35 = *MEMORY[0x277CEF0B0];
      v36 = v130;
      if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[SiriCoreSQLiteDatabase executeQuery:]";
        v164 = 2112;
        v165 = v14;
        _os_log_error_impl(&dword_2669D1000, v35, OS_LOG_TYPE_ERROR, "%s result = %@", buf, 0x16u);
      }

      v29 = 0;
    }

    else
    {
      v29 = 0;
      v36 = v130;
    }

    goto LABEL_207;
  }

  v129 = v20;
  v127 = v7;
  v128 = queryCopy;
  if (!v30)
  {
LABEL_65:
    recordBuilder = [queryCopy recordBuilder];
    if ((options & 0x7E) != 0)
    {
      v61 = sqlite3_column_count(ppStmt);
      v62 = v61;
      if ((options & 0x6A) != 0)
      {
        v7 = v127;
        v20 = v129;
        if (v61 >= 1)
        {
          v63 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v61];
          v64 = 0;
          while (1)
          {
            v65 = sqlite3_column_name(ppStmt, v64);
            if (v65)
            {
              v65 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v65];
            }

            if (!v63)
            {
              break;
            }

            [v63 addObject:v65];

            if (v62 == ++v64)
            {
              goto LABEL_98;
            }
          }

          v105 = v65;
          v106 = objc_alloc(MEMORY[0x277CCA9B8]);
          v107 = *MEMORY[0x277CCA170];
          v148[0] = selfCopy->_path;
          v147[0] = v107;
          v147[1] = @"columnCount";
          v108 = [MEMORY[0x277CCABB0] numberWithInt:v62];
          v148[1] = v108;
          v147[2] = @"columnIndex";
          v109 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v147[3] = @"query";
          v148[2] = v109;
          v148[3] = queryCopy;
          v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:4];
          v13 = [v106 initWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:10 userInfo:v110];

          v14 = [[SiriCoreSQLiteQueryResult alloc] initWithQuery:queryCopy beginMachTime:v132 endMachTime:mach_absolute_time() statement:0 columnNameTuple:0 columnValueTuples:0 columnValuesMap:0 rowValueTuples:0 rowValueMaps:0 records:0 error:v13];
          if (v13)
          {
            v111 = *MEMORY[0x277CEF0B0];
            v36 = v130;
            if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "[SiriCoreSQLiteDatabase executeQuery:]";
              v164 = 2112;
              v165 = v14;
              _os_log_error_impl(&dword_2669D1000, v111, OS_LOG_TYPE_ERROR, "%s result = %@", buf, 0x16u);
            }

            v29 = 0;
            goto LABEL_206;
          }

          v29 = 0;
          goto LABEL_205;
        }

        v63 = MEMORY[0x277CBEBF8];
LABEL_98:
        if ((options & 2) != 0)
        {
          v76 = [v63 copy];
        }

        else
        {
          v76 = 0;
        }

LABEL_86:
        v126 = v76;
        v143 = v63;
        if ((options & 0x7C) == 0)
        {
          do
          {
            v80 = objc_autoreleasePoolPush();
            v81 = sqlite3_step(ppStmt);
            objc_autoreleasePoolPop(v80);
          }

          while (v81 == 100);
          v131 = 0;
          v133 = 0;
          v134 = 0;
          v82 = 0;
          v83 = 0;
          goto LABEL_187;
        }

        if ((options & 0xC) != 0)
        {
          if (v62 < 1)
          {
            v77 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v77 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v62];
            v78 = v62;
            do
            {
              v79 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v77 addObject:v79];

              --v78;
            }

            while (v78);
          }
        }

        else
        {
          v77 = 0;
        }

        if ((options & 0x10) != 0)
        {
          v134 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if ((options & 0x20) != 0)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v134 = 0;
          if ((options & 0x20) != 0)
          {
LABEL_104:
            v133 = objc_alloc_init(MEMORY[0x277CBEB18]);
LABEL_107:
            v142 = v77;
            if ((options & 0x40) != 0)
            {
              v131 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            else
            {
              v131 = 0;
            }

            v86 = v62;
            v138 = MEMORY[0x277CBEBF8] & (options << 59 >> 63);
            v137 = MEMORY[0x277CBEC10] & (options << 58 >> 63);
            v135 = v62;
            while (1)
            {
              v87 = objc_autoreleasePoolPush();
              v88 = sqlite3_step(ppStmt);
              if (v88 != 100)
              {
                v81 = v88;
                objc_autoreleasePoolPop(v87);
                if (v81 != 101)
                {
                  v82 = 0;
                  v83 = 0;
                  v7 = v127;
                  v20 = v129;
                  goto LABEL_186;
                }

                v7 = v127;
                v20 = v129;
                if ((options & 4) == 0)
                {
                  if ((options & 8) == 0)
                  {
                    v82 = 0;
                    v83 = 0;
                    goto LABEL_186;
                  }

                  v83 = 0;
                  if (v62 >= 1)
                  {
LABEL_180:
                    v82 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v86];
                    v112 = 0;
                    do
                    {
                      v113 = [v143 objectAtIndex:v112];
                      v114 = [v142 objectAtIndex:v112];
                      [v82 setObject:v114 forKey:v113];

                      ++v112;
                    }

                    while (v86 != v112);
                    v20 = v129;
LABEL_186:

                    queryCopy = v128;
LABEL_187:
                    if (v81 == 101)
                    {
                      if (options)
                      {
                        v121 = v130;
                        if (v20)
                        {
                          v121 = v20;
                        }

                        if (v7)
                        {
                          v121 = v7;
                        }

                        v29 = v121;
                      }

                      else
                      {
                        v29 = 0;
                      }

                      if ((options & 0x10000) != 0 && v130)
                      {
                        cachedSQLiteStatementsByQueryString = selfCopy->_cachedSQLiteStatementsByQueryString;
                        string3 = [queryCopy string];
                        [(NSCache *)cachedSQLiteStatementsByQueryString setObject:v130 forKey:string3];

                        queryCopy = v128;
                      }

                      v14 = [[SiriCoreSQLiteQueryResult alloc] initWithQuery:queryCopy beginMachTime:v132 endMachTime:mach_absolute_time() statement:v29 columnNameTuple:v126 columnValueTuples:v83 columnValuesMap:v82 rowValueTuples:v134 rowValueMaps:v133 records:v131 error:0];

                      v105 = v126;
                      v13 = 0;
                      v20 = v129;
                      v36 = v130;
                      goto LABEL_206;
                    }

                    v115 = sqlite3_extended_errcode(selfCopy->_handle);
                    v116 = objc_alloc(MEMORY[0x277CCA9B8]);
                    v117 = selfCopy->_path;
                    v145[0] = *MEMORY[0x277CCA170];
                    v145[1] = @"query";
                    v146[0] = v117;
                    v146[1] = queryCopy;
                    v145[2] = *MEMORY[0x277CCA7E8];
                    v118 = SiriCoreSQLiteDatabaseCreateSQLiteAPIErrorFromResultCode(v81, v115);
                    v146[2] = v118;
                    v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:3];
                    v13 = [v116 initWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:2 userInfo:v119];

                    v14 = [[SiriCoreSQLiteQueryResult alloc] initWithQuery:queryCopy beginMachTime:v132 endMachTime:mach_absolute_time() statement:0 columnNameTuple:0 columnValueTuples:0 columnValuesMap:0 rowValueTuples:0 rowValueMaps:0 records:0 error:v13];
                    if (v13)
                    {
                      v120 = *MEMORY[0x277CEF0B0];
                      v36 = v130;
                      if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315394;
                        *&buf[4] = "[SiriCoreSQLiteDatabase executeQuery:]";
                        v164 = 2112;
                        v165 = v14;
                        _os_log_error_impl(&dword_2669D1000, v120, OS_LOG_TYPE_ERROR, "%s result = %@", buf, 0x16u);
                      }

                      v29 = 0;
                      v105 = v143;
                      goto LABEL_206;
                    }

                    v29 = 0;
                    v105 = v143;
LABEL_205:
                    v36 = v130;
LABEL_206:

                    goto LABEL_207;
                  }

LABEL_185:
                  v82 = MEMORY[0x277CBEC10];
                  goto LABEL_186;
                }

                if (v62 <= 0)
                {
                  v83 = MEMORY[0x277CBEBF8];
                  if ((options & 8) != 0)
                  {
                    goto LABEL_185;
                  }
                }

                else
                {
                  v83 = [v142 copy];
                  if ((options & 8) != 0)
                  {
                    goto LABEL_180;
                  }
                }

                v82 = 0;
                goto LABEL_186;
              }

              if ((options & 0x40) != 0)
              {
                [recordBuilder reset];
              }

              v89 = v137;
              v90 = v138;
              if (v62 >= 1)
              {
                if ((options & 0x10) != 0)
                {
                  v90 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v86];
                }

                else
                {
                  v90 = 0;
                }

                v140 = v87;
                if ((options & 0x20) != 0)
                {
                  v89 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v86];
                }

                else
                {
                  v89 = 0;
                }

                v91 = 0;
                while (1)
                {
                  v92 = ppStmt;
                  v93 = sqlite3_column_type(ppStmt, v91);
                  v94 = v93;
                  if (v93 <= 2)
                  {
                    if (v93 == 1)
                    {
                      null = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(v92, v91)}];
                      goto LABEL_135;
                    }

                    if (v93 == 2)
                    {
                      null = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(v92, v91)}];
                      goto LABEL_135;
                    }
                  }

                  else
                  {
                    switch(v93)
                    {
                      case 3:
                        v96 = sqlite3_column_text(v92, v91);
                        if (!v96)
                        {
                          goto LABEL_136;
                        }

                        null = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v96];
                        goto LABEL_135;
                      case 4:
                        v97 = sqlite3_column_blob(v92, v91);
                        v98 = sqlite3_column_bytes(v92, v91);
                        if (v98 < 1)
                        {
                          goto LABEL_136;
                        }

                        null = [MEMORY[0x277CBEA90] dataWithBytes:v97 length:v98];
LABEL_135:
                        null2 = null;
                        if (!null)
                        {
                          goto LABEL_136;
                        }

                        goto LABEL_143;
                      case 5:
                        null = [MEMORY[0x277CBEB68] null];
                        goto LABEL_135;
                    }
                  }

                  v100 = sqlite3_column_text(v92, v91);
                  if (v100)
                  {
                    null2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v100];
                  }

                  else
                  {
                    null2 = 0;
                  }

                  v101 = *MEMORY[0x277CEF0B0];
                  if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    *&buf[4] = "SiriCoreSQLiteDatabaseGetColumnValueFromSQLiteStatement";
                    v164 = 2112;
                    v165 = null2;
                    v166 = 1024;
                    v167 = v91;
                    v168 = 1024;
                    LODWORD(v169) = v94;
                    _os_log_error_impl(&dword_2669D1000, v101, OS_LOG_TYPE_ERROR, "%s %@ (sqlite_column_index = %d, sqlite_column_type = %d)", buf, 0x22u);
                    if (!null2)
                    {
LABEL_136:
                      null2 = [MEMORY[0x277CBEB68] null];
                      if ((options & 0xC) == 0)
                      {
                        goto LABEL_145;
                      }

LABEL_144:
                      v102 = [v142 objectAtIndex:v91];
                      [v102 addObject:null2];

                      goto LABEL_145;
                    }
                  }

                  else if (!null2)
                  {
                    goto LABEL_136;
                  }

LABEL_143:
                  if ((options & 0xC) != 0)
                  {
                    goto LABEL_144;
                  }

LABEL_145:
                  if ((options & 0x10) != 0)
                  {
                    [v90 addObject:null2];
                  }

                  if ((options & 0x60) != 0)
                  {
                    v103 = [v143 objectAtIndex:v91];
                    if ((options & 0x20) != 0)
                    {
                      [v89 setObject:null2 forKey:v103];
                    }

                    if ((options & 0x40) != 0)
                    {
                      [recordBuilder setValue:null2 forColumnName:v103];
                    }
                  }

                  if (v86 == ++v91)
                  {
                    LODWORD(v62) = v135;
                    v87 = v140;
                    break;
                  }
                }
              }

              if ((options & 0x10) != 0)
              {
                [v134 addObject:v90];
                if ((options & 0x20) == 0)
                {
LABEL_159:
                  if ((options & 0x40) == 0)
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_163;
                }
              }

              else if ((options & 0x20) == 0)
              {
                goto LABEL_159;
              }

              [v133 addObject:v89];
              if ((options & 0x40) == 0)
              {
                goto LABEL_166;
              }

LABEL_163:
              build = [recordBuilder build];
              if (build)
              {
                [v131 addObject:build];
              }

LABEL_166:
              objc_autoreleasePoolPop(v87);
            }
          }
        }

        v133 = 0;
        goto LABEL_107;
      }
    }

    else
    {
      LODWORD(v62) = 0;
    }

    v63 = 0;
    v76 = 0;
    v7 = v127;
    v20 = v129;
    goto LABEL_86;
  }

  v48 = 0;
  v49 = MEMORY[0x277CEF0B0];
  while (1)
  {
    v50 = [parameters objectAtIndex:v48];
    ++v48;
    v51 = ppStmt;
    v52 = v50;
    siriCoreSQLiteValue_type = [(SiriCoreSQLiteQueryResult *)v52 siriCoreSQLiteValue_type];
    v54 = siriCoreSQLiteValue_type;
    if (siriCoreSQLiteValue_type <= 2)
    {
      if (siriCoreSQLiteValue_type == 1)
      {
        *buf = 0;
        v57 = [(SiriCoreSQLiteQueryResult *)v52 siriCoreSQLiteValue_blobRepresentationWithLength:buf];
        v55 = sqlite3_bind_blob64(v51, v48, v57, *buf, 0);
        goto LABEL_59;
      }

      if (siriCoreSQLiteValue_type == 2)
      {
        [(SiriCoreSQLiteQueryResult *)v52 siriCoreSQLiteValue_doubleRepresentation];
        v55 = sqlite3_bind_double(v51, v48, v56);
        goto LABEL_59;
      }
    }

    else
    {
      switch(siriCoreSQLiteValue_type)
      {
        case 3:
          v55 = sqlite3_bind_int64(v51, v48, [(SiriCoreSQLiteQueryResult *)v52 siriCoreSQLiteValue_integerRepresentation]);
          goto LABEL_59;
        case 4:
          v55 = sqlite3_bind_null(v51, v48);
          goto LABEL_59;
        case 5:
          v55 = sqlite3_bind_text(v51, v48, [(SiriCoreSQLiteQueryResult *)v52 siriCoreSQLiteValue_textRepresentation], -1, 0);
LABEL_59:
          v58 = v55;
          goto LABEL_60;
      }
    }

    v59 = [(SiriCoreSQLiteQueryResult *)v52 description];
    v58 = sqlite3_bind_text(v51, v48, [v59 UTF8String], -1, 0);

    v60 = *v49;
    if (os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "SiriCoreSQLiteDatabaseBindQueryParameterToSQLiteStatement";
      v164 = 2112;
      v165 = v52;
      v166 = 1024;
      v167 = v48;
      v168 = 2048;
      v169 = v54;
      _os_log_error_impl(&dword_2669D1000, v60, OS_LOG_TYPE_ERROR, "%s %@ (sqlite_parameter_index = %d, valueType = %ld)", buf, 0x26u);
    }

LABEL_60:

    if (v58)
    {
      break;
    }

    if (v30 == v48)
    {
      goto LABEL_65;
    }
  }

  v70 = sqlite3_extended_errcode(selfCopy->_handle);
  v71 = objc_alloc(MEMORY[0x277CCA9B8]);
  v72 = selfCopy->_path;
  v149[0] = *MEMORY[0x277CCA170];
  v149[1] = @"query";
  v150[0] = v72;
  v150[1] = queryCopy;
  v149[2] = *MEMORY[0x277CCA7E8];
  v73 = SiriCoreSQLiteDatabaseCreateSQLiteAPIErrorFromResultCode(v58, v70);
  v150[2] = v73;
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:3];
  v13 = [v71 initWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:2 userInfo:v74];

  v14 = [[SiriCoreSQLiteQueryResult alloc] initWithQuery:queryCopy beginMachTime:v132 endMachTime:mach_absolute_time() statement:0 columnNameTuple:0 columnValueTuples:0 columnValuesMap:0 rowValueTuples:0 rowValueMaps:0 records:0 error:v13];
  if (v13)
  {
    v75 = *v49;
    if (os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SiriCoreSQLiteDatabase executeQuery:]";
      v164 = 2112;
      v165 = v14;
      _os_log_error_impl(&dword_2669D1000, v75, OS_LOG_TYPE_ERROR, "%s result = %@", buf, 0x16u);
    }
  }

  v29 = 0;
  v7 = v127;
  v20 = v129;
  v36 = v130;
LABEL_207:

LABEL_208:
LABEL_209:

LABEL_210:
  v124 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)closeWithError:(id *)error
{
  v31[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF0B0];
  v6 = *MEMORY[0x277CEF0B0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_INFO))
  {
    v24 = 136315138;
    v25 = "[SiriCoreSQLiteDatabase closeWithError:]";
    _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_INFO, "%s ", &v24, 0xCu);
  }

  if (error)
  {
    *error = 0;
  }

  handle = self->_handle;
  if (handle)
  {
    v8 = sqlite3_close_v2(handle);
    v9 = v8 == 0;
    if (v8)
    {
      v10 = v8;
      v11 = sqlite3_extended_errcode(self->_handle);
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA170];
      v31[0] = self->_path;
      v14 = *MEMORY[0x277CCA7E8];
      v30[0] = v13;
      v30[1] = v14;
      v15 = SiriCoreSQLiteDatabaseCreateSQLiteAPIErrorFromResultCode(v10, v11);
      v31[1] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
      v17 = [v12 errorWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:2 userInfo:v16];
    }

    else
    {
      v17 = 0;
      self->_handle = 0;
    }

    [(NSCache *)self->_cachedSQLiteStatementsByQueryString removeAllObjects];
    if (error)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
    v9 = 1;
    if (error)
    {
LABEL_12:
      v18 = v17;
      *error = v17;
    }
  }

  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = v9;
  }

  v20 = *v5;
  v21 = *v5;
  if (v19)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v24 = 136315138;
      v25 = "[SiriCoreSQLiteDatabase closeWithError:]";
      _os_log_impl(&dword_2669D1000, v20, OS_LOG_TYPE_INFO, "%s done", &v24, 0xCu);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v24 = 136315650;
    v25 = "[SiriCoreSQLiteDatabase closeWithError:]";
    v26 = 1024;
    v27 = v9;
    v28 = 2112;
    v29 = v17;
    _os_log_error_impl(&dword_2669D1000, v20, OS_LOG_TYPE_ERROR, "%s success = %d, error = %@", &v24, 0x1Cu);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)openWithError:(id *)error
{
  v76[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF0B0];
  v6 = *MEMORY[0x277CEF0B0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v62 = "[SiriCoreSQLiteDatabase openWithError:]";
    _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (error)
  {
    *error = 0;
  }

  p_handle = &self->_handle;
  if (self->_handle)
  {
    v8 = 0;
    v9 = 1;
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!self->_path)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:3 userInfo:0];
    goto LABEL_22;
  }

  v60 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = [defaultManager fileExistsAtPath:self->_path isDirectory:&v60];

  if (v17)
  {
    if (v60 == 1)
    {
      v18 = MEMORY[0x277CCA9B8];
      path = self->_path;
      v75 = *MEMORY[0x277CCA170];
      v76[0] = path;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
      v8 = [v18 errorWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:4 userInfo:v20];

LABEL_22:
      v9 = 0;
      goto LABEL_46;
    }

    goto LABEL_26;
  }

  stringByDeletingLastPathComponent = [(NSString *)self->_path stringByDeletingLastPathComponent];
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = [defaultManager2 fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v60];

  if (v23)
  {
    if (v60 != 1)
    {
      v41 = MEMORY[0x277CCA9B8];
      v73 = *MEMORY[0x277CCA170];
      v74 = stringByDeletingLastPathComponent;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      v8 = [v41 errorWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:5 userInfo:v42];

      goto LABEL_22;
    }

LABEL_26:
    v8 = 0;
    goto LABEL_28;
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v59 = 0;
  v25 = [defaultManager3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v59];
  v8 = v59;

  if (!v25)
  {
    goto LABEL_22;
  }

LABEL_28:
  v26 = self->_dataProtectionClass - 1;
  if (v26 >= 3)
  {
    v27 = 1048582;
  }

  else
  {
    v27 = (v26 << 20) + 2097158;
  }

  v28 = sqlite3_open_v2([(NSString *)self->_path fileSystemRepresentation], &self->_handle, v27, 0);
  if (v28)
  {
    v29 = v28;
    v30 = sqlite3_extended_errcode(self->_handle);
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA170];
    v72[0] = self->_path;
    v33 = *MEMORY[0x277CCA7E8];
    v71[0] = v32;
    v71[1] = v33;
    v34 = SiriCoreSQLiteDatabaseCreateSQLiteAPIErrorFromResultCode(v29, v30);
    v72[1] = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
    v36 = [v31 errorWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:2 userInfo:v35];

    v9 = 0;
    self->_handle = 0;
    v8 = v36;
  }

  else
  {
    if ((self->_options & 2) != 0)
    {
      v37 = sqlite3_exec(*p_handle, "PRAGMA journal_mode=WAL", 0, 0, 0);
      if (v37)
      {
        v38 = v37;
        v39 = sqlite3_extended_errcode(*p_handle);
        v40 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v62 = "[SiriCoreSQLiteDatabase openWithError:]";
          v63 = 1024;
          v64 = v38;
          v65 = 1024;
          LODWORD(v66) = v39;
          _os_log_error_impl(&dword_2669D1000, v40, OS_LOG_TYPE_ERROR, "%s Failed to enable WAL journal_mode with errorCode: %d, extendedCode: %d", buf, 0x18u);
        }
      }

      else
      {
        v43 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v62 = "[SiriCoreSQLiteDatabase openWithError:]";
          _os_log_debug_impl(&dword_2669D1000, v43, OS_LOG_TYPE_DEBUG, "%s WAL mode enabled succesfully.", buf, 0xCu);
        }
      }
    }

    v44 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_path];
    v45 = [MEMORY[0x277CCABB0] numberWithInt:self->_options & 1];
    v46 = *MEMORY[0x277CBE878];
    v58 = v8;
    v9 = [v44 setResourceValue:v45 forKey:v46 error:&v58];
    v47 = v58;

    if ((v9 & 1) == 0)
    {
      v48 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA170];
      if (v47)
      {
        v50 = self->_path;
        v51 = *MEMORY[0x277CCA7E8];
        v69[0] = *MEMORY[0x277CCA170];
        v69[1] = v51;
        v70[0] = v50;
        v70[1] = v47;
        v52 = MEMORY[0x277CBEAC0];
        v53 = v70;
        v54 = v69;
        v55 = 2;
      }

      else
      {
        v67 = *MEMORY[0x277CCA170];
        v68 = self->_path;
        v52 = MEMORY[0x277CBEAC0];
        v53 = &v68;
        v54 = &v67;
        v55 = 1;
      }

      v56 = [v52 dictionaryWithObjects:v53 forKeys:v54 count:v55];
      v57 = [v48 errorWithDomain:@"SiriCoreSQLiteDatabaseErrorDomain" code:1 userInfo:v56];

      sqlite3_close_v2(*p_handle);
      *p_handle = 0;
      v47 = v57;
    }

    v8 = v47;
  }

LABEL_46:
  [(NSCache *)self->_cachedSQLiteStatementsByQueryString removeAllObjects];
  if (error)
  {
LABEL_7:
    v10 = v8;
    *error = v8;
  }

LABEL_8:
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = *v5;
  v13 = *v5;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v62 = "[SiriCoreSQLiteDatabase openWithError:]";
      _os_log_impl(&dword_2669D1000, v12, OS_LOG_TYPE_INFO, "%s done", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v62 = "[SiriCoreSQLiteDatabase openWithError:]";
    v63 = 1024;
    v64 = v9;
    v65 = 2112;
    v66 = v8;
    _os_log_error_impl(&dword_2669D1000, v12, OS_LOG_TYPE_ERROR, "%s success = %d, error = %@", buf, 0x1Cu);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (SiriCoreSQLiteDatabase)initWithPath:(id)path dataProtectionClass:(int64_t)class options:(int64_t)options
{
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = SiriCoreSQLiteDatabase;
  v9 = [(SiriCoreSQLiteDatabase *)&v16 init];
  if (v9)
  {
    stringByStandardizingPath = [pathCopy stringByStandardizingPath];
    v11 = [stringByStandardizingPath copy];
    path = v9->_path;
    v9->_path = v11;

    v9->_dataProtectionClass = class;
    v9->_options = options;
    v13 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cachedSQLiteStatementsByQueryString = v9->_cachedSQLiteStatementsByQueryString;
    v9->_cachedSQLiteStatementsByQueryString = v13;

    [(NSCache *)v9->_cachedSQLiteStatementsByQueryString setCountLimit:64];
  }

  return v9;
}

- (BOOL)updateTableWithName:(id)name columnName:(id)columnName columnValue:(id)value criterion:(id)criterion error:(id *)error
{
  v12 = MEMORY[0x277CCACA8];
  criterionCopy = criterion;
  valueCopy = value;
  columnNameCopy = columnName;
  nameCopy = name;
  v17 = [v12 alloc];
  v18 = [nameCopy siriCoreSQLiteValue_escapedString:1];

  v19 = [columnNameCopy siriCoreSQLiteValue_escapedString:1];

  v20 = [valueCopy siriCoreSQLiteValue_escapedString:1];

  v21 = [v17 initWithFormat:@"UPDATE %@ SET %@ = %@", v18, v19, v20];
  v22 = SiriCoreSQLiteQueryCreateCriterionExpression(criterionCopy);

  if (v22)
  {
    v23 = [v21 stringByAppendingFormat:@" WHERE %@", v22];

    v21 = v23;
  }

  v24 = [[SiriCoreSQLiteQuery alloc] initWithString:v21 statement:0 parameters:0 recordBuilder:0 options:0];
  v25 = [(SiriCoreSQLiteDatabase *)self executeQuery:v24 error:error];

  return v25;
}

- (BOOL)updateTableWithName:(id)name valueMap:(id)map criterion:(id)criterion error:(id *)error
{
  criterionCopy = criterion;
  mapCopy = map;
  nameCopy = name;
  v13 = [mapCopy count];
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v13];
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v13];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __79__SiriCoreSQLiteDatabase_Update__updateTableWithName_valueMap_criterion_error___block_invoke;
  v30 = &unk_279BD63D0;
  v16 = v14;
  v31 = v16;
  v17 = v15;
  v32 = v17;
  [mapCopy enumerateKeysAndObjectsUsingBlock:&v27];

  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  v19 = [nameCopy siriCoreSQLiteValue_escapedString:1];

  v20 = [v16 componentsJoinedByString:{@", "}];
  v21 = [v18 initWithFormat:@"UPDATE %@ SET %@", v19, v20, v27, v28, v29, v30];

  v22 = SiriCoreSQLiteQueryCreateCriterionExpression(criterionCopy);

  if (v22)
  {
    v23 = [v21 stringByAppendingFormat:@" WHERE %@", v22];

    v21 = v23;
  }

  v24 = [[SiriCoreSQLiteQuery alloc] initWithString:v21 statement:0 parameters:v17 recordBuilder:0 options:0];
  v25 = [(SiriCoreSQLiteDatabase *)self executeQuery:v24 error:error];

  return v25;
}

void __79__SiriCoreSQLiteDatabase_Update__updateTableWithName_valueMap_criterion_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCACA8];
  v11 = a3;
  v7 = a2;
  v8 = [v6 alloc];
  v9 = [v7 siriCoreSQLiteValue_escapedString:1];

  v10 = [v8 initWithFormat:@"%@ = ?", v9];
  [v5 addObject:v10];

  [*(a1 + 40) addObject:v11];
}

- (unint64_t)countValuesInTableWithName:(id)name columnName:(id)columnName behavior:(int64_t)behavior indexedBy:(id)by criterion:(id)criterion range:(id)range error:(id *)error
{
  nameCopy = name;
  columnNameCopy = columnName;
  byCopy = by;
  criterionCopy = criterion;
  rangeCopy = range;
  if (error)
  {
    *error = 0;
  }

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  selfCopy = self;
  if (behavior == 2)
  {
    if (columnNameCopy)
    {
      v21 = [columnNameCopy siriCoreSQLiteValue_escapedString:1];
    }

    else
    {
      v21 = @"*";
    }

    v22 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v23 = [v20 initWithFormat:@"SELECT ALL COUNT(%@) FROM %@", v21, v22];
  }

  else if (behavior == 1)
  {
    if (columnNameCopy)
    {
      v21 = [columnNameCopy siriCoreSQLiteValue_escapedString:1];
    }

    else
    {
      v21 = @"*";
    }

    v22 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v23 = [v20 initWithFormat:@"SELECT DISTINCT COUNT(%@) FROM %@", v21, v22];
  }

  else
  {
    if (columnNameCopy)
    {
      v21 = [columnNameCopy siriCoreSQLiteValue_escapedString:1];
    }

    else
    {
      v21 = @"*";
    }

    v22 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v23 = [v20 initWithFormat:@"SELECT COUNT(%@) FROM %@", v21, v22];
  }

  v24 = v23;

  if (columnNameCopy)
  {
  }

  v25 = _SiriCoreSQLiteApplyIndexToQuery(byCopy, v24);

  v26 = SiriCoreSQLiteQueryCreateCriterionExpression(criterionCopy);
  v47 = nameCopy;
  v43 = v26;
  if (v26)
  {
    v27 = [v25 stringByAppendingFormat:@" WHERE %@", v26];

    v25 = v27;
  }

  v28 = SiriCoreSQLiteQueryCreateRangeExpression(rangeCopy);
  v29 = v28;
  v46 = rangeCopy;
  if (v28)
  {
    v30 = [v25 stringByAppendingFormat:@" %@", v28];

    v25 = v30;
  }

  v31 = [[SiriCoreSQLiteQuery alloc] initWithString:v25 statement:0 parameters:0 recordBuilder:0 options:4];
  v32 = [(SiriCoreSQLiteDatabase *)selfCopy executeQuery:v31];
  error = [v32 error];
  v34 = error;
  if (error)
  {
    if (error)
    {
      v35 = error;
      unsignedIntegerValue = 0;
      *error = v34;
    }

    else
    {
      unsignedIntegerValue = 0;
    }
  }

  else
  {
    [v32 columnValueTuples];
    v37 = v42 = criterionCopy;
    [v37 firstObject];
    v38 = v45 = byCopy;
    [v38 firstObject];
    v40 = v39 = columnNameCopy;
    unsignedIntegerValue = [v40 unsignedIntegerValue];

    columnNameCopy = v39;
    byCopy = v45;

    criterionCopy = v42;
  }

  return unsignedIntegerValue;
}

- (id)selectValuesFromTableWithName:(id)name columnName:(id)columnName behavior:(int64_t)behavior indexedBy:(id)by criterion:(id)criterion order:(id)order range:(id)range error:(id *)self0
{
  nameCopy = name;
  columnNameCopy = columnName;
  byCopy = by;
  criterionCopy = criterion;
  orderCopy = order;
  rangeCopy = range;
  if (error)
  {
    *error = 0;
  }

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = [columnNameCopy siriCoreSQLiteValue_escapedString:1];
  v50 = nameCopy;
  v22 = [nameCopy siriCoreSQLiteValue_escapedString:1];
  v23 = v22;
  v24 = @"SELECT %@ FROM %@";
  if (behavior == 2)
  {
    v24 = @"SELECT ALL %@ FROM %@";
  }

  if (behavior == 1)
  {
    v25 = @"SELECT DISTINCT %@ FROM %@";
  }

  else
  {
    v25 = v24;
  }

  v26 = [v20 initWithFormat:v25, v21, v22];

  v49 = byCopy;
  v27 = _SiriCoreSQLiteApplyIndexToQuery(byCopy, v26);

  v28 = SiriCoreSQLiteQueryCreateCriterionExpression(criterionCopy);
  v29 = v28;
  v48 = criterionCopy;
  if (v28)
  {
    v30 = [v27 stringByAppendingFormat:@" WHERE %@", v28];

    v27 = v30;
  }

  v31 = SiriCoreSQLiteQueryCreateOrderExpression(orderCopy);
  v32 = v31;
  if (v31)
  {
    v33 = [v27 stringByAppendingFormat:@" %@", v31];

    v27 = v33;
  }

  v47 = rangeCopy;
  v34 = SiriCoreSQLiteQueryCreateRangeExpression(rangeCopy);
  v35 = v34;
  v36 = columnNameCopy;
  if (v34)
  {
    v37 = [v27 stringByAppendingFormat:@" %@", v34];

    v27 = v37;
  }

  v38 = [[SiriCoreSQLiteQuery alloc] initWithString:v27 statement:0 parameters:0 recordBuilder:0 options:4];
  v39 = [(SiriCoreSQLiteDatabase *)self executeQuery:v38];
  error = [v39 error];
  v41 = error;
  if (error)
  {
    if (error)
    {
      v42 = error;
      firstObject = 0;
      *error = v41;
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    columnValueTuples = [v39 columnValueTuples];
    firstObject = [columnValueTuples firstObject];
  }

  return firstObject;
}

- (id)selectRecordsFromTableWithName:(id)name columnNames:(id)names behavior:(int64_t)behavior indexedBy:(id)by criterion:(id)criterion order:(id)order range:(id)range recordBuilder:(id)self0 error:(id *)self1
{
  nameCopy = name;
  namesCopy = names;
  byCopy = by;
  orderCopy = order;
  rangeCopy = range;
  if (error)
  {
    *error = 0;
  }

  builderCopy = builder;
  criterionCopy = criterion;
  v21 = [namesCopy count];
  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  if (behavior == 2)
  {
    if (v21)
    {
      v23 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(namesCopy, 1);
    }

    else
    {
      v23 = @"*";
    }

    v24 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v25 = [v22 initWithFormat:@"SELECT ALL %@ FROM %@", v23, v24];
  }

  else if (behavior == 1)
  {
    if (v21)
    {
      v23 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(namesCopy, 1);
    }

    else
    {
      v23 = @"*";
    }

    v24 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v25 = [v22 initWithFormat:@"SELECT DISTINCT %@ FROM %@", v23, v24];
  }

  else
  {
    if (v21)
    {
      v23 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(namesCopy, 1);
    }

    else
    {
      v23 = @"*";
    }

    v24 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v25 = [v22 initWithFormat:@"SELECT %@ FROM %@", v23, v24];
  }

  v26 = v25;

  if (v21)
  {
  }

  v27 = _SiriCoreSQLiteApplyIndexToQuery(byCopy, v26);

  v28 = SiriCoreSQLiteQueryCreateCriterionExpression(criterionCopy);

  if (v28)
  {
    v29 = [v27 stringByAppendingFormat:@" WHERE %@", v28];

    v27 = v29;
  }

  v30 = SiriCoreSQLiteQueryCreateOrderExpression(orderCopy);
  v31 = v30;
  if (v30)
  {
    v32 = [v27 stringByAppendingFormat:@" %@", v30];

    v27 = v32;
  }

  v45 = namesCopy;
  v33 = SiriCoreSQLiteQueryCreateRangeExpression(rangeCopy);
  v34 = v33;
  v35 = byCopy;
  if (v33)
  {
    v36 = [v27 stringByAppendingFormat:@" %@", v33];

    v27 = v36;
  }

  v37 = [[SiriCoreSQLiteQuery alloc] initWithString:v27 statement:0 parameters:0 recordBuilder:builderCopy options:64];

  v38 = [(SiriCoreSQLiteDatabase *)self executeQuery:v37];
  error = [v38 error];
  v40 = error;
  if (error)
  {
    if (error)
    {
      v41 = error;
      records = 0;
      *error = v40;
    }

    else
    {
      records = 0;
    }
  }

  else
  {
    records = [v38 records];
  }

  return records;
}

- (id)selectValueMapsFromTableWithName:(id)name columnNames:(id)names behavior:(int64_t)behavior indexedBy:(id)by criterion:(id)criterion order:(id)order range:(id)range error:(id *)self0
{
  nameCopy = name;
  namesCopy = names;
  byCopy = by;
  orderCopy = order;
  rangeCopy = range;
  if (error)
  {
    *error = 0;
  }

  criterionCopy = criterion;
  v20 = [namesCopy count];
  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  if (behavior == 2)
  {
    if (v20)
    {
      v22 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(namesCopy, 1);
    }

    else
    {
      v22 = @"*";
    }

    v23 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v24 = [v21 initWithFormat:@"SELECT ALL %@ FROM %@", v22, v23];
  }

  else if (behavior == 1)
  {
    if (v20)
    {
      v22 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(namesCopy, 1);
    }

    else
    {
      v22 = @"*";
    }

    v23 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v24 = [v21 initWithFormat:@"SELECT DISTINCT %@ FROM %@", v22, v23];
  }

  else
  {
    if (v20)
    {
      v22 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(namesCopy, 1);
    }

    else
    {
      v22 = @"*";
    }

    v23 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v24 = [v21 initWithFormat:@"SELECT %@ FROM %@", v22, v23];
  }

  v25 = v24;

  if (v20)
  {
  }

  v26 = _SiriCoreSQLiteApplyIndexToQuery(byCopy, v25);

  v27 = SiriCoreSQLiteQueryCreateCriterionExpression(criterionCopy);

  if (v27)
  {
    v28 = [v26 stringByAppendingFormat:@" WHERE %@", v27];

    v26 = v28;
  }

  v29 = SiriCoreSQLiteQueryCreateOrderExpression(orderCopy);
  v30 = v29;
  if (v29)
  {
    v31 = [v26 stringByAppendingFormat:@" %@", v29];

    v26 = v31;
  }

  v43 = namesCopy;
  v32 = SiriCoreSQLiteQueryCreateRangeExpression(rangeCopy);
  v33 = v32;
  v34 = byCopy;
  if (v32)
  {
    v35 = [v26 stringByAppendingFormat:@" %@", v32];

    v26 = v35;
  }

  v36 = [[SiriCoreSQLiteQuery alloc] initWithString:v26 statement:0 parameters:0 recordBuilder:0 options:32];
  v37 = [(SiriCoreSQLiteDatabase *)self executeQuery:v36];
  error = [v37 error];
  v39 = error;
  if (error)
  {
    if (error)
    {
      v40 = error;
      rowValueMaps = 0;
      *error = v39;
    }

    else
    {
      rowValueMaps = 0;
    }
  }

  else
  {
    rowValueMaps = [v37 rowValueMaps];
  }

  return rowValueMaps;
}

- (id)selectValueTuplesFromTableWithName:(id)name columnNames:(id)names behavior:(int64_t)behavior indexedBy:(id)by criterion:(id)criterion order:(id)order range:(id)range error:(id *)self0
{
  nameCopy = name;
  namesCopy = names;
  byCopy = by;
  orderCopy = order;
  rangeCopy = range;
  if (error)
  {
    *error = 0;
  }

  criterionCopy = criterion;
  v20 = [namesCopy count];
  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  if (behavior == 2)
  {
    if (v20)
    {
      v22 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(namesCopy, 1);
    }

    else
    {
      v22 = @"*";
    }

    v23 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v24 = [v21 initWithFormat:@"SELECT ALL %@ FROM %@", v22, v23];
  }

  else if (behavior == 1)
  {
    if (v20)
    {
      v22 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(namesCopy, 1);
    }

    else
    {
      v22 = @"*";
    }

    v23 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v24 = [v21 initWithFormat:@"SELECT DISTINCT %@ FROM %@", v22, v23];
  }

  else
  {
    if (v20)
    {
      v22 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(namesCopy, 1);
    }

    else
    {
      v22 = @"*";
    }

    v23 = [nameCopy siriCoreSQLiteValue_escapedString:1];
    v24 = [v21 initWithFormat:@"SELECT %@ FROM %@", v22, v23];
  }

  v25 = v24;

  if (v20)
  {
  }

  v26 = _SiriCoreSQLiteApplyIndexToQuery(byCopy, v25);

  v27 = SiriCoreSQLiteQueryCreateCriterionExpression(criterionCopy);

  if (v27)
  {
    v28 = [v26 stringByAppendingFormat:@" WHERE %@", v27];

    v26 = v28;
  }

  v29 = SiriCoreSQLiteQueryCreateOrderExpression(orderCopy);
  v30 = v29;
  if (v29)
  {
    v31 = [v26 stringByAppendingFormat:@" %@", v29];

    v26 = v31;
  }

  v43 = namesCopy;
  v32 = SiriCoreSQLiteQueryCreateRangeExpression(rangeCopy);
  v33 = v32;
  v34 = byCopy;
  if (v32)
  {
    v35 = [v26 stringByAppendingFormat:@" %@", v32];

    v26 = v35;
  }

  v36 = [[SiriCoreSQLiteQuery alloc] initWithString:v26 statement:0 parameters:0 recordBuilder:0 options:16];
  v37 = [(SiriCoreSQLiteDatabase *)self executeQuery:v36];
  error = [v37 error];
  v39 = error;
  if (error)
  {
    if (error)
    {
      v40 = error;
      rowValueTuples = 0;
      *error = v39;
    }

    else
    {
      rowValueTuples = 0;
    }
  }

  else
  {
    rowValueTuples = [v37 rowValueTuples];
  }

  return rowValueTuples;
}

- (BOOL)dropIndexWithName:(id)name error:(id *)error
{
  v6 = MEMORY[0x277CCACA8];
  nameCopy = name;
  v8 = [v6 alloc];
  v9 = [nameCopy siriCoreSQLiteValue_escapedString:1];

  v10 = [v8 initWithFormat:@"DROP INDEX IF EXISTS %@", v9];
  LOBYTE(error) = [(SiriCoreSQLiteDatabase *)self executeQueryString:v10 error:error];

  return error;
}

- (BOOL)createIndex:(id)index error:(id *)error
{
  v6 = MEMORY[0x277CCACA8];
  indexCopy = index;
  v8 = [v6 alloc];
  if ([indexCopy options])
  {
    v9 = @" UNIQUE ";
  }

  else
  {
    v9 = @" ";
  }

  name = [indexCopy name];
  v11 = [name siriCoreSQLiteValue_escapedString:0];
  tableName = [indexCopy tableName];
  v13 = [tableName siriCoreSQLiteValue_escapedString:1];
  columnNames = [indexCopy columnNames];

  v15 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(columnNames, 1);
  v16 = [v8 initWithFormat:@"CREATE%@INDEX IF NOT EXISTS %@ ON %@ (%@)", v9, v11, v13, v15];

  v17 = [(SiriCoreSQLiteDatabase *)self executeQueryString:v16 error:error];
  return v17;
}

- (BOOL)alterTableWithName:(id)name addColumn:(id)column error:(id *)error
{
  v8 = MEMORY[0x277CCACA8];
  columnCopy = column;
  nameCopy = name;
  v11 = [v8 alloc];
  v12 = [nameCopy siriCoreSQLiteValue_escapedString:1];

  v13 = SiriCoreSQLiteQueryCreateColumnDefinition(columnCopy);

  v14 = [v11 initWithFormat:@"ALTER TABLE %@ ADD COLUMN %@", v12, v13];
  LOBYTE(error) = [(SiriCoreSQLiteDatabase *)self executeQueryString:v14 error:error];

  return error;
}

- (BOOL)alterTableWithName:(id)name renameTo:(id)to error:(id *)error
{
  v8 = MEMORY[0x277CCACA8];
  toCopy = to;
  nameCopy = name;
  v11 = [v8 alloc];
  v12 = [nameCopy siriCoreSQLiteValue_escapedString:1];

  v13 = [toCopy siriCoreSQLiteValue_escapedString:0];

  v14 = [v11 initWithFormat:@"ALTER TABLE %@ RENAME TO %@", v12, v13];
  LOBYTE(error) = [(SiriCoreSQLiteDatabase *)self executeQueryString:v14 error:error];

  return error;
}

- (BOOL)dropTableWithName:(id)name error:(id *)error
{
  v6 = MEMORY[0x277CCACA8];
  nameCopy = name;
  v8 = [v6 alloc];
  v9 = [nameCopy siriCoreSQLiteValue_escapedString:1];

  v10 = [v8 initWithFormat:@"DROP TABLE IF EXISTS %@", v9];
  LOBYTE(error) = [(SiriCoreSQLiteDatabase *)self executeQueryString:v10 error:error];

  return error;
}

- (BOOL)createTable:(id)table error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  columns = [tableCopy columns];
  v40 = tableCopy;
  constraints = [tableCopy constraints];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(constraints, "count") + objc_msgSend(columns, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = columns;
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      v12 = 0;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = SiriCoreSQLiteQueryCreateColumnDefinition(*(*(&v45 + 1) + 8 * v12));
        if (v13)
        {
          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v10);
  }

  v37 = v8;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = constraints;
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      v18 = 0;
      do
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v41 + 1) + 8 * v18);
        v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
        name = [v19 name];
        if (name)
        {
          [v20 addObject:@"CONSTRAINT"];
          v22 = [name siriCoreSQLiteValue_escapedString:0];
          [v20 addObject:v22];
        }

        type = [v19 type];
        if (type == 1)
        {
          v24 = @"PRIMARY KEY";
        }

        else
        {
          if (type != 2)
          {
            goto LABEL_22;
          }

          v24 = @"UNIQUE";
        }

        [v20 addObject:v24];
        v25 = objc_alloc(MEMORY[0x277CCACA8]);
        columnNames = [v19 columnNames];
        v27 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(columnNames, 0);
        v28 = [v25 initWithFormat:@"(%@)", v27];
        [v20 addObject:v28];

LABEL_22:
        if ([v20 count])
        {
          v29 = [v20 componentsJoinedByString:@" "];
          [v7 addObject:v29];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v16);
  }

  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  name2 = [v40 name];
  v32 = [name2 siriCoreSQLiteValue_escapedString:0];
  v33 = [v7 componentsJoinedByString:{@", "}];
  v34 = [v30 initWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@)", v32, v33];

  LOBYTE(v30) = [(SiriCoreSQLiteDatabase *)self executeQueryString:v34 error:error];
  v35 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)fetchTableWithName:(id)name error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (error)
  {
    *error = 0;
  }

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [nameCopy siriCoreSQLiteValue_escapedString:1];
  v9 = [v7 initWithFormat:@"pragma table_info(%@)", v8];

  v10 = [[SiriCoreSQLiteQuery alloc] initWithString:v9 statement:0 parameters:0 recordBuilder:0 options:32];
  v11 = [(SiriCoreSQLiteDatabase *)self executeQuery:v10];
  error = [v11 error];
  v13 = error;
  if (error)
  {
    if (error)
    {
      v14 = error;
      v15 = 0;
      *error = v13;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  rowValueMaps = [v11 rowValueMaps];
  v17 = [rowValueMaps count];

  if (!v17)
  {
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v36 = v10;
  v37 = v9;
  v38 = nameCopy;
  v40 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v17];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v35 = v11;
  obj = [v11 rowValueMaps];
  v18 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v41 + 1) + 8 * i);
        v23 = [v22 objectForKey:@"cid"];
        integerValue = [v23 integerValue];

        v25 = [v22 objectForKey:@"name"];
        v26 = [v22 objectForKey:@"type"];
        v27 = [v22 objectForKey:@"pk"];
        bOOLValue = [v27 BOOLValue];

        v29 = [v22 objectForKey:@"notnull"];
        bOOLValue2 = [v29 BOOLValue];

        v31 = [v22 objectForKey:@"dflt_value"];
        v32 = [[_SiriCoreSQLiteColumnInfo alloc] initWithIdentifier:integerValue name:v25 type:v26 isPrimaryKey:bOOLValue isNotNull:bOOLValue2 defaultValue:v31];
        [v40 addObject:v32];
      }

      v19 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v19);
  }

  nameCopy = v38;
  v15 = [[_SiriCoreSQLiteTableInfo alloc] initWithName:v38 columns:v40];

  v10 = v36;
  v9 = v37;
  v13 = 0;
  v11 = v35;
LABEL_16:

  v33 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)fetchTableNamesWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT name FROM sqlite_master WHERE (type == 'table')"];
  v6 = [[SiriCoreSQLiteQuery alloc] initWithString:v5 statement:0 parameters:0 recordBuilder:0 options:4];
  v7 = [(SiriCoreSQLiteDatabase *)self executeQuery:v6];
  error = [v7 error];
  v9 = error;
  if (error)
  {
    if (error)
    {
      v10 = error;
      firstObject = 0;
      *error = v9;
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    columnValueTuples = [v7 columnValueTuples];
    firstObject = [columnValueTuples firstObject];
  }

  return firstObject;
}

- (BOOL)rollbackToSavepointWithName:(id)name error:(id *)error
{
  v6 = MEMORY[0x277CCACA8];
  nameCopy = name;
  v8 = [v6 alloc];
  v9 = [nameCopy siriCoreSQLiteValue_escapedString:0];

  v10 = [v8 initWithFormat:@"ROLLBACK TO SAVEPOINT %@", v9];
  LOBYTE(error) = [(SiriCoreSQLiteDatabase *)self executeQueryString:v10 error:error];

  return error;
}

- (BOOL)releaseSavepointWithName:(id)name error:(id *)error
{
  v6 = MEMORY[0x277CCACA8];
  nameCopy = name;
  v8 = [v6 alloc];
  v9 = [nameCopy siriCoreSQLiteValue_escapedString:0];

  v10 = [v8 initWithFormat:@"RELEASE SAVEPOINT %@", v9];
  LOBYTE(error) = [(SiriCoreSQLiteDatabase *)self executeQueryString:v10 error:error];

  return error;
}

- (BOOL)savepointWithName:(id)name error:(id *)error
{
  v6 = MEMORY[0x277CCACA8];
  nameCopy = name;
  v8 = [v6 alloc];
  v9 = [nameCopy siriCoreSQLiteValue_escapedString:0];

  v10 = [v8 initWithFormat:@"SAVEPOINT %@", v9];
  LOBYTE(error) = [(SiriCoreSQLiteDatabase *)self executeQueryString:v10 error:error];

  return error;
}

- (BOOL)insertIntoTableWithName:(id)name record:(id)record error:(id *)error
{
  nameCopy = name;
  recordCopy = record;
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __71__SiriCoreSQLiteDatabase_Insert__insertIntoTableWithName_record_error___block_invoke;
  v23 = &unk_279BD63F8;
  v26 = v27;
  v12 = v10;
  v24 = v12;
  v13 = v11;
  v25 = v13;
  [recordCopy siriCoreSQLiteRecord_enumerateColumnNamesAndValuesUsingBlock:&v20];
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = [nameCopy siriCoreSQLiteValue_escapedString:1];
  v16 = SiriCoreSQLiteQueryCreateParametrizedAndCommaSeparatedString([v13 count]);
  v17 = [v14 initWithFormat:@"INSERT INTO %@ (%@) VALUES (%@)", v15, v12, v16, v20, v21, v22, v23];

  v18 = [[SiriCoreSQLiteQuery alloc] initWithString:v17 statement:0 parameters:v13 recordBuilder:0 options:0];
  LOBYTE(error) = [(SiriCoreSQLiteDatabase *)self executeQuery:v18 error:error];

  _Block_object_dispose(v27, 8);
  return error;
}

void __71__SiriCoreSQLiteDatabase_Insert__insertIntoTableWithName_record_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 48) + 8) + 24);
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 siriCoreSQLiteValue_escapedString:1];
  v9 = v8;
  if (v5)
  {
    [v6 appendFormat:@", %@", v8];
  }

  else
  {
    [v6 appendString:v8];
  }

  [*(a1 + 40) addObject:v7];
  ++*(*(*(a1 + 48) + 8) + 24);
}

- (BOOL)insertIntoTableWithName:(id)name valueMap:(id)map error:(id *)error
{
  mapCopy = map;
  nameCopy = name;
  v10 = [mapCopy count];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10];
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__SiriCoreSQLiteDatabase_Insert__insertIntoTableWithName_valueMap_error___block_invoke;
  v22[3] = &unk_279BD63D0;
  v23 = v11;
  v24 = v12;
  v13 = v12;
  v14 = v11;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v22];

  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = [nameCopy siriCoreSQLiteValue_escapedString:1];

  v17 = SiriCoreSQLiteQueryCreateEscapedAndCommaSeparatedString(v14, 1);
  v18 = SiriCoreSQLiteQueryCreateParametrizedAndCommaSeparatedString([v14 count]);
  v19 = [v15 initWithFormat:@"INSERT INTO %@ (%@) VALUES (%@)", v16, v17, v18];

  v20 = [[SiriCoreSQLiteQuery alloc] initWithString:v19 statement:0 parameters:v13 recordBuilder:0 options:0];
  LOBYTE(error) = [(SiriCoreSQLiteDatabase *)self executeQuery:v20 error:error];

  return error;
}

void __73__SiriCoreSQLiteDatabase_Insert__insertIntoTableWithName_valueMap_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 40) addObject:v6];
}

- (BOOL)deleteFromTableWithName:(id)name indexedBy:(id)by criterion:(id)criterion error:(id *)error
{
  byCopy = by;
  v11 = MEMORY[0x277CCACA8];
  criterionCopy = criterion;
  nameCopy = name;
  v14 = [v11 alloc];
  v15 = [nameCopy siriCoreSQLiteValue_escapedString:1];

  v16 = [v14 initWithFormat:@"DELETE FROM %@", v15];
  v17 = _SiriCoreSQLiteApplyIndexToQuery(byCopy, v16);
  v18 = SiriCoreSQLiteQueryCreateCriterionExpression(criterionCopy);

  if (v18)
  {
    v19 = [v16 stringByAppendingFormat:@" WHERE %@", v18];

    v16 = v19;
  }

  v20 = [(SiriCoreSQLiteDatabase *)self executeQueryString:v16 error:error];

  return v20;
}

@end