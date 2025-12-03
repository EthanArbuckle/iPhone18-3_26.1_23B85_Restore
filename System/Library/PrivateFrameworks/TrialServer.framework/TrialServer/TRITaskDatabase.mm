@interface TRITaskDatabase
- (BOOL)_checkTaskId:(id)id IsPresent:(BOOL *)present transaction:(id)transaction;
- (BOOL)enumerateTasksWithTagsIntersectingTagSet:(id)set block:(id)block;
- (BOOL)removeTaskWithId:(id)id cleanupBlock:(id)block;
- (BOOL)updateTaskWithTaskId:(id)id capabilities:(unint64_t)capabilities task:(id)task;
- (BOOL)updateTaskWithTaskId:(id)id startDate:(id)date task:(id)task;
- (TRITaskDatabase)initWithDatabase:(id)database taskSetProvider:(id)provider;
- (id)_tasksForQuery:(id)query onPrep:(id)prep;
- (id)addTask:(id)task startTime:(id)time tags:(id)tags dependencies:(id)dependencies error:(id *)error;
- (id)allTasks;
- (id)dependencyFreeTasksForAllowedCapabilities:(unint64_t)capabilities dateForRunnability:(id)runnability;
- (id)dependencyFreeTasksForAllowedCapabilities:(unint64_t)capabilities dateForRunnability:(id)runnability taskType:(int)type;
- (id)directDependenciesOfTaskWithId:(id)id;
- (id)idForTask:(id)task;
- (id)taskIdsWithTag:(id)tag;
- (id)tasksDependentOnTask:(id)task;
- (int)taskTypeForTaskWithId:(id)id;
- (unint64_t)count;
@end

@implementation TRITaskDatabase

- (TRITaskDatabase)initWithDatabase:(id)database taskSetProvider:(id)provider
{
  databaseCopy = database;
  providerCopy = provider;
  v10 = providerCopy;
  if (databaseCopy)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"database"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"taskSetProvider"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRITaskDatabase;
  v11 = [(TRITaskDatabase *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_db, database);
    objc_storeStrong(&v12->_taskSetProvider, provider);
  }

  return v12;
}

- (id)addTask:(id)task startTime:(id)time tags:(id)tags dependencies:(id)dependencies error:(id *)error
{
  v49[1] = *MEMORY[0x277D85DE8];
  taskCopy = task;
  timeCopy = time;
  tagsCopy = tags;
  dependenciesCopy = dependencies;
  if (!taskCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"task"}];
  }

  if (-[TRITaskSetProviding taskClassForTaskType:](self->_taskSetProvider, "taskClassForTaskType:", [taskCopy taskType]))
  {
    serialize = [taskCopy serialize];
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__25;
    v46 = __Block_byref_object_dispose__25;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__25;
    v40 = __Block_byref_object_dispose__25;
    v41 = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __61__TRITaskDatabase_addTask_startTime_tags_dependencies_error___block_invoke;
    v28[3] = &unk_279DE1E38;
    v28[4] = self;
    v29 = taskCopy;
    v34 = &v42;
    v35 = &v36;
    v30 = dependenciesCopy;
    v18 = serialize;
    v31 = v18;
    v32 = timeCopy;
    v33 = tagsCopy;
    [(TRITaskDatabase *)self writeTransactionWithFailableBlock:v28];
    if (error)
    {
      v19 = v43[5];
      if (v19)
      {
        *error = v19;
      }
    }

    error = v37[5];

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v42, 8);
  }

  else
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v20 = objc_alloc(MEMORY[0x277CCA9B8]);
    v48 = *MEMORY[0x277CCA450];
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = objc_opt_class();
    v18 = NSStringFromClass(v22);
    v23 = [v21 initWithFormat:@"Can't add task of class %@ which is not registered", v18];
    v49[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    *error = [v20 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v24];

    error = 0;
  }

LABEL_11:
  v25 = *MEMORY[0x277D85DE8];

  return error;
}

uint64_t __61__TRITaskDatabase_addTask_startTime_tags_dependencies_error___block_invoke(uint64_t a1, void *a2)
{
  v81[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) idForTask:*(a1 + 40)];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Tried to add TRITask %@, which has a duplicate already present in the database", *(a1 + 40)];
    v80 = *MEMORY[0x277CCA450];
    v81[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v6];
    v8 = *(*(a1 + 80) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
    }

    v11 = *(*(a1 + 88) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    goto LABEL_5;
  }

  if ([*(a1 + 48) count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v78 = 0x2020000000;
    v79 = 0x8000000000000000;
    v4 = [v3 db];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __61__TRITaskDatabase_addTask_startTime_tags_dependencies_error___block_invoke_37;
    v71[3] = &unk_279DDF860;
    v72 = *(a1 + 48);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __61__TRITaskDatabase_addTask_startTime_tags_dependencies_error___block_invoke_2;
    v70[3] = &unk_279DDFC98;
    v70[4] = &buf;
    v16 = *(*(a1 + 32) + 8);
    v17 = *(*(a1 + 80) + 8);
    obj = *(v17 + 40);
    v18 = [v16 generalErrorHandlerWithOutError:&obj];
    objc_storeStrong((v17 + 40), obj);
    LOBYTE(v17) = [v4 prepAndRunQuery:@" WITH depsTable (dep_rowid) AS(    SELECT * FROM _pas_nsarray(:dependencies)) SELECT dep_rowid FROM     depsTable WHERE     dep_rowid NOT IN (SELECT rowid FROM tasks) LIMIT 1;" onPrep:v71 onRow:v70 onError:v18];

    if (v17)
    {
      if (*(*(&buf + 1) + 24) == 0x8000000000000000)
      {
        v19 = 1;
        goto LABEL_18;
      }

      v22 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = [v22 initWithFormat:@"Tried to add TRITask with dependent task %lld, which is not in the db", *(*(&buf + 1) + 24)];
      v75 = *MEMORY[0x277CCA450];
      v76 = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v25 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v24];
      v26 = *(*(a1 + 80) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v28 = TRILogCategory_Server();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v73 = 138543362;
        v74 = v23;
        _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "%{public}@", v73, 0xCu);
      }

      v29 = *(*(a1 + 88) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = 0;
    }

    else
    {
      v20 = *(*(a1 + 88) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = 0;
    }

    v19 = 0;
    v4 = *MEMORY[0x277D42678];
LABEL_18:

    _Block_object_dispose(&buf, 8);
    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v31 = [v3 db];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __61__TRITaskDatabase_addTask_startTime_tags_dependencies_error___block_invoke_49;
  v65[3] = &unk_279DE1780;
  v66 = *(a1 + 40);
  v67 = *(a1 + 56);
  v68 = *(a1 + 64);
  v32 = *(*(a1 + 32) + 8);
  v33 = *(*(a1 + 80) + 8);
  v64 = *(v33 + 40);
  v34 = [v32 generalErrorHandlerWithOutError:&v64];
  objc_storeStrong((v33 + 40), v64);
  v35 = [v31 prepAndRunQuery:@" INSERT INTO tasks(    taskType onPrep:serializedTask onRow:startSecondsFromEpoch onError:{hash, capabilities) VALUES(    :task_type, :serialized_task, :start_seconds, :hash, :capabilities_mask);", v65, 0, v34}];

  if ((v35 & 1) == 0)
  {
    v36 = *(*(a1 + 88) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = 0;

    v4 = *MEMORY[0x277D42678];
  }

  if (v35)
  {
    v38 = [v3 db];
    v39 = v38;
    insert_rowid = sqlite3_last_insert_rowid([v38 handle]);

    if ([*(a1 + 72) count])
    {
      v41 = [v3 db];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __61__TRITaskDatabase_addTask_startTime_tags_dependencies_error___block_invoke_2_59;
      v61[3] = &unk_279DE1538;
      v63 = insert_rowid;
      v62 = *(a1 + 72);
      v42 = *(*(a1 + 32) + 8);
      v43 = *(*(a1 + 80) + 8);
      v60 = *(v43 + 40);
      v44 = [v42 generalErrorHandlerWithOutError:&v60];
      objc_storeStrong((v43 + 40), v60);
      LODWORD(v43) = [v41 prepAndRunQuery:@" INSERT OR IGNORE INTO taskTags(    taskId onPrep:tag) SELECT     :tasks_rowid onRow:* FROM     _pas_nsarray(:tags);" onError:{v61, 0, v44}];

      if (!v43)
      {
        v52 = *(*(a1 + 88) + 8);
        v53 = *(v52 + 40);
        *(v52 + 40) = 0;

        goto LABEL_5;
      }
    }

    if (![*(a1 + 48) count])
    {
LABEL_28:
      v49 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:insert_rowid];
      v50 = *(*(a1 + 88) + 8);
      v51 = *(v50 + 40);
      *(v50 + 40) = v49;

      v13 = MEMORY[0x277D42670];
      goto LABEL_6;
    }

    v45 = [v3 db];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __61__TRITaskDatabase_addTask_startTime_tags_dependencies_error___block_invoke_3;
    v57[3] = &unk_279DE1538;
    v59 = insert_rowid;
    v58 = *(a1 + 48);
    v46 = *(*(a1 + 32) + 8);
    v47 = *(*(a1 + 80) + 8);
    v56 = *(v47 + 40);
    v48 = [v46 generalErrorHandlerWithOutError:&v56];
    objc_storeStrong((v47 + 40), v56);
    LODWORD(v47) = [v45 prepAndRunQuery:@" INSERT OR IGNORE INTO taskDependencies(    taskId onPrep:dependentTaskId) SELECT     :tasks_rowid onRow:* FROM     _pas_nsarray(:dependencies);" onError:{v57, 0, v48}];

    if (v47)
    {

      goto LABEL_28;
    }

    v54 = *(*(a1 + 88) + 8);
    v55 = *(v54 + 40);
    *(v54 + 40) = 0;

LABEL_5:
    v13 = MEMORY[0x277D42678];
LABEL_6:
    v4 = *v13;
  }

LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

void __61__TRITaskDatabase_addTask_startTime_tags_dependencies_error___block_invoke_49(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 bindNamedParam:":task_type" toInt64:{objc_msgSend(*(a1 + 32), "taskType")}];
  [v6 bindNamedParam:":serialized_task" toNSData:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = MEMORY[0x277CCABB0];
    [v3 timeIntervalSince1970];
    v5 = [v4 numberWithDouble:?];
    [v6 bindNamedParam:":start_seconds" toDoubleAsNSNumber:v5];
  }

  else
  {
    [v6 bindNamedParam:":start_seconds" toDoubleAsNSNumber:0];
  }

  [v6 bindNamedParam:":hash" toInt64:{objc_msgSend(*(a1 + 32), "hash")}];
  [v6 bindNamedParam:":capabilities_mask" toInt64:{objc_msgSend(*(a1 + 32), "requiredCapabilities")}];
}

void __61__TRITaskDatabase_addTask_startTime_tags_dependencies_error___block_invoke_2_59(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":tasks_rowid" toInt64:v3];
  [v4 bindNamedParam:":tags" toNSArray:*(a1 + 32)];
}

void __61__TRITaskDatabase_addTask_startTime_tags_dependencies_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":tasks_rowid" toInt64:v3];
  [v4 bindNamedParam:":dependencies" toNSArray:*(a1 + 32)];
}

- (BOOL)removeTaskWithId:(id)id cleanupBlock:(id)block
{
  v41 = *MEMORY[0x277D85DE8];
  idCopy = id;
  blockCopy = block;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"taskId != nil"}];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__69;
  v31[4] = __Block_byref_object_dispose__70;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__25;
  v29 = __Block_byref_object_dispose__25;
  v30 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__TRITaskDatabase_removeTaskWithId_cleanupBlock___block_invoke;
  v17[3] = &unk_279DE1E88;
  v9 = blockCopy;
  v20 = v9;
  v10 = idCopy;
  v18 = v10;
  selfCopy = self;
  v21 = v31;
  v22 = &v33;
  v23 = &v25;
  v24 = a2;
  [(TRITaskDatabase *)self writeTransactionWithFailableBlock:v17];
  if (v26[5])
  {
    v11 = [(TRITaskDatabase *)self taskTypeForTaskWithId:v10];
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v38 = v10;
      v39 = 1024;
      v40 = v11;
      _os_log_fault_impl(&dword_26F567000, v12, OS_LOG_TYPE_FAULT, "removeTaskWithId:cleanupBlock: failed to remove task with taskId %@ and type %d", buf, 0x12u);
    }
  }

  v13 = *(v34 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(&v33, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

uint64_t __49__TRITaskDatabase_removeTaskWithId_cleanupBlock___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48))
  {
    v5 = [v3 db];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __49__TRITaskDatabase_removeTaskWithId_cleanupBlock___block_invoke_2;
    v35[3] = &unk_279DDF860;
    v36 = *(a1 + 32);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __49__TRITaskDatabase_removeTaskWithId_cleanupBlock___block_invoke_3;
    v32[3] = &unk_279DE1E60;
    v6 = *(a1 + 40);
    v34 = *(a1 + 80);
    v32[4] = v6;
    v24 = *(a1 + 48);
    v7 = v24;
    v33 = v24;
    v8 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:0];
    [v5 prepAndRunQuery:@" SELECT     taskType onPrep:serializedTask FROM     tasks WHERE     rowid = :task_id LIMIT 1;" onRow:v35 onError:{v32, v8}];
  }

  v9 = [v4 db];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __49__TRITaskDatabase_removeTaskWithId_cleanupBlock___block_invoke_2_85;
  v30[3] = &unk_279DDF860;
  v31 = *(a1 + 32);
  v10 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:0];
  v11 = [v9 prepAndRunQuery:@" DELETE FROM         taskDependencies WHERE         taskId = :task_id    OR   dependentTaskId = :task_id;" onPrep:v30 onRow:0 onError:v10];

  if ((v11 & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v18 = *MEMORY[0x277D42678];
    v19 = v31;
LABEL_12:

    goto LABEL_13;
  }

  v12 = [v4 db];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __49__TRITaskDatabase_removeTaskWithId_cleanupBlock___block_invoke_3_89;
  v28[3] = &unk_279DDF860;
  v29 = *(a1 + 32);
  v13 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:0];
  v14 = [v12 prepAndRunQuery:@" DELETE FROM     taskTags WHERE     taskId = :task_id;" onPrep:v28 onRow:0 onError:v13];

  if ((v14 & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v18 = *MEMORY[0x277D42678];
    v19 = v29;
    goto LABEL_12;
  }

  v15 = [v4 db];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __49__TRITaskDatabase_removeTaskWithId_cleanupBlock___block_invoke_4;
  v26[3] = &unk_279DDF860;
  v27 = *(a1 + 32);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __49__TRITaskDatabase_removeTaskWithId_cleanupBlock___block_invoke_5;
  v25[3] = &unk_279DDF778;
  v25[4] = *(a1 + 72);
  v16 = [v15 prepAndRunQuery:@" DELETE FROM     tasks WHERE     rowid = :task_id;" onPrep:v26 onRow:0 onError:v25];

  if (!v16 || *(*(*(a1 + 72) + 8) + 40))
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = [*(*(*(a1 + 72) + 8) + 40) localizedDescription];
      *buf = 138412290;
      v38 = v23;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Unable to remove task from task table due to SQLite error: %@", buf, 0xCu);
    }

    v18 = *MEMORY[0x277D42678];
    v19 = v27;
    goto LABEL_12;
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  v22 = *(*(*(a1 + 56) + 8) + 40);
  if (v22)
  {
    (*(v22 + 16))();
  }

  v18 = *MEMORY[0x277D42670];
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __49__TRITaskDatabase_removeTaskWithId_cleanupBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"taskType" table:0];
  v5 = [v3 getNSDataForColumnName:"serializedTask" table:0];

  if (!v5)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRITaskDatabase.m" lineNumber:252 description:@"read NULL serializedTask for NOT NULL column"];
  }

  v6 = [*(*(a1 + 32) + 16) taskClassForTaskType:v4];
  if (v6)
  {
    v7 = [v6 parseFromData:v5];
    if (v7)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __49__TRITaskDatabase_removeTaskWithId_cleanupBlock___block_invoke_80;
      v16[3] = &unk_279DDF7C8;
      v18 = *(a1 + 40);
      v17 = v7;
      v8 = MEMORY[0x2743948D0](v16);
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = *MEMORY[0x277D42698];
    }

    else
    {
      v11 = *MEMORY[0x277D42698];
    }
  }

  else
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = v4;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failure deserializing task of unsupported type %d", buf, 8u);
    }

    v11 = *MEMORY[0x277D42698];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)allTasks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__25;
  v11 = __Block_byref_object_dispose__25;
  v12 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__TRITaskDatabase_allTasks__block_invoke;
  v6[3] = &unk_279DE1F28;
  v6[5] = &v7;
  v6[6] = a2;
  v6[4] = self;
  [(TRITaskDatabase *)self readTransactionWithFailableBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __27__TRITaskDatabase_allTasks__block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __27__TRITaskDatabase_allTasks__block_invoke_2;
  v59[3] = &unk_279DE1EB0;
  v61 = a1[6];
  v60 = *(a1 + 2);
  v5 = [*(v60 + 8) generalErrorHandlerWithOutError:0];
  v6 = [v4 prepAndRunQuery:@" SELECT * FROM tasks;" onPrep:0 onRow:v59 onError:v5];

  if (v6)
  {
    v7 = objc_opt_new();
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__25;
    v57 = __Block_byref_object_dispose__25;
    v58 = 0;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __27__TRITaskDatabase_allTasks__block_invoke_110;
    v49[3] = &unk_279DE1ED8;
    v8 = a1[5];
    v51 = &v53;
    v52 = v8;
    v9 = v7;
    v50 = v9;
    v10 = MEMORY[0x2743948D0](v49);
    v11 = [v3 db];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __27__TRITaskDatabase_allTasks__block_invoke_2_114;
    v44[3] = &unk_279DE1F00;
    v12 = a1[6];
    v47 = &v53;
    v48 = v12;
    v44[4] = a1[4];
    v13 = v10;
    v46 = v13;
    v14 = v9;
    v45 = v14;
    v15 = [*(a1[4] + 8) generalErrorHandlerWithOutError:0];
    v16 = [v11 prepAndRunQuery:@" SELECT * FROM     taskTags ORDER BY     taskId ASC onPrep:rowid ASC;" onRow:0 onError:{v44, v15}];

    if (v16)
    {
      v13[2](v13);
    }

    else
    {
      v19 = *(a1[5] + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = 0;

      v11 = *MEMORY[0x277D42678];
    }

    _Block_object_dispose(&v53, 8);
    if (v16)
    {
      v21 = objc_opt_new();
      v53 = 0;
      v54 = &v53;
      v55 = 0x3032000000;
      v56 = __Block_byref_object_copy__25;
      v57 = __Block_byref_object_dispose__25;
      v58 = 0;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __27__TRITaskDatabase_allTasks__block_invoke_3;
      v40[3] = &unk_279DE1ED8;
      v22 = a1[5];
      v42 = &v53;
      v43 = v22;
      v23 = v21;
      v41 = v23;
      v24 = MEMORY[0x2743948D0](v40);
      v25 = [v3 db];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __27__TRITaskDatabase_allTasks__block_invoke_4;
      v34[3] = &unk_279DE1F00;
      v26 = a1[6];
      v35 = a1[4];
      v38 = &v53;
      v39 = v26;
      v27 = v24;
      v37 = v27;
      v28 = v23;
      v36 = v28;
      v29 = [*(a1[4] + 8) generalErrorHandlerWithOutError:{0, v34[0], 3221225472, __27__TRITaskDatabase_allTasks__block_invoke_4, &unk_279DE1F00, v35}];
      v30 = [v25 prepAndRunQuery:@" SELECT * FROM     taskDependencies ORDER BY     taskId ASC onPrep:dependentTaskId ASC;" onRow:0 onError:{v34, v29}];

      if (v30)
      {
        v27[2](v27);
      }

      else
      {
        v31 = *(a1[5] + 8);
        v32 = *(v31 + 40);
        *(v31 + 40) = 0;

        LODWORD(v11) = *MEMORY[0x277D42678];
      }

      _Block_object_dispose(&v53, 8);
      if (v30)
      {
        v11 = *MEMORY[0x277D42670];
      }

      else
      {
        v11 = v11;
      }
    }
  }

  else
  {
    v17 = *(a1[5] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    v11 = *MEMORY[0x277D42678];
  }

  return v11;
}

uint64_t __27__TRITaskDatabase_allTasks__block_invoke_2(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getInt64AsNSNumberForColumnName:"rowid" table:0];
  if (!v4)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a1[6] object:a1[4] file:@"TRITaskDatabase.m" lineNumber:359 description:@"read NULL rowid from PRIMARY KEY column"];
  }

  v5 = [v3 getInt64ForColumnName:"taskType" table:0];
  v6 = [v3 getDoubleAsNSNumberForColumnName:"startSecondsFromEpoch" table:0];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v6 doubleValue];
    v8 = [v7 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 getNSDataForColumnName:"serializedTask" table:0];
  if (!v9)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a1[6] object:a1[4] file:@"TRITaskDatabase.m" lineNumber:368 description:@"read NULL serializedTask from NOT NULL column"];
  }

  v10 = [*(a1[4] + 16) taskClassForTaskType:v5];
  if (v10)
  {
    v11 = [v10 parseFromData:v9];
    if (v11)
    {
      v12 = [v3 getInt64ForColumnName:"capabilities" table:0];
      if (v12 == [v11 requiredCapabilities])
      {
        v13 = [TRITaskRecord alloc];
        v14 = [(TRITaskRecord *)v13 initWithTaskId:v4 task:v11 startDate:v8 dependencies:MEMORY[0x277CBEBF8] capabilities:v12 tags:MEMORY[0x277CBEBF8]];
        [*(*(a1[5] + 8) + 40) setObject:v14 forKeyedSubscript:v4];
        v15 = *MEMORY[0x277D42690];

LABEL_19:
        goto LABEL_20;
      }

      v17 = TRILogCategory_Server();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_18:

        v15 = *MEMORY[0x277D42690];
        goto LABEL_19;
      }

      LOWORD(v25) = 0;
      v18 = "task capabilities mismatch in tasks table";
      v19 = v17;
      v20 = 2;
    }

    else
    {
      v17 = TRILogCategory_Server();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v25 = 67109120;
      v26 = v5;
      v18 = "Failure deserializing task of type %d";
      v19 = v17;
      v20 = 8;
    }

    _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, v18, &v25, v20);
    goto LABEL_18;
  }

  v16 = TRILogCategory_Server();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v25 = 67109120;
    v26 = v5;
    _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failure deserializing task of unsupported type %d", &v25, 8u);
  }

  v15 = *MEMORY[0x277D42690];
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __27__TRITaskDatabase_allTasks__block_invoke_110(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:?];
    if (v2)
    {
      v3 = [*(a1 + 32) copy];
      v4 = [v2 copyWithReplacementTags:v3];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v4 forKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
    }
  }

  v5 = *(a1 + 32);

  return [v5 removeAllObjects];
}

uint64_t __27__TRITaskDatabase_allTasks__block_invoke_2_114(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64AsNSNumberForColumnName:"taskId" table:0];
  if (!v4)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRITaskDatabase.m" lineNumber:430 description:@"read NULL taskId from NOT NULL column"];
  }

  v5 = [v3 getNSStringForColumnName:"tag" table:0];
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRITaskDatabase.m" lineNumber:433 description:@"read NULL tag from NOT NULL column"];
  }

  if (([v4 isEqual:*(*(*(a1 + 56) + 8) + 40)] & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  [*(a1 + 40) addObject:v5];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = MEMORY[0x277D42690];
  return *v8;
}

uint64_t __27__TRITaskDatabase_allTasks__block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:?];
    if (v2)
    {
      v3 = [*(a1 + 32) copy];
      v4 = [v2 copyWithReplacementDependencies:v3];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v4 forKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
    }
  }

  v5 = *(a1 + 32);

  return [v5 removeAllObjects];
}

uint64_t __27__TRITaskDatabase_allTasks__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64AsNSNumberForColumnName:"taskId" table:0];
  if (!v4)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRITaskDatabase.m" lineNumber:479 description:@"read NULL taskId from NOT NULL column"];
  }

  v5 = [v3 getInt64AsNSNumberForColumnName:"dependentTaskId" table:0];
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRITaskDatabase.m" lineNumber:482 description:@"read NULL dependentTaskId from NOT NULL column"];
  }

  if (([v4 isEqual:*(*(*(a1 + 56) + 8) + 40)] & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  [*(a1 + 40) addObject:v5];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = MEMORY[0x277D42690];
  return *v8;
}

- (id)dependencyFreeTasksForAllowedCapabilities:(unint64_t)capabilities dateForRunnability:(id)runnability
{
  runnabilityCopy = runnability;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __80__TRITaskDatabase_dependencyFreeTasksForAllowedCapabilities_dateForRunnability___block_invoke;
  v14 = &unk_279DE1538;
  v15 = runnabilityCopy;
  capabilitiesCopy = capabilities;
  v7 = runnabilityCopy;
  v8 = MEMORY[0x2743948D0](&v11);
  v9 = [(TRITaskDatabase *)self _tasksForQuery:@" SELECT * FROM tasks WHERE rowid NOT IN (SELECT taskId FROM taskDependencies)       AND (startSecondsFromEpoch IS NULL OR startSecondsFromEpoch <= :date_for_runnability)       AND (capabilities & :capabilities_mask) = capabilities" onPrep:v8, v11, v12, v13, v14];;

  return v9;
}

void __80__TRITaskDatabase_dependencyFreeTasksForAllowedCapabilities_dateForRunnability___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 timeIntervalSince1970];
  [v4 bindNamedParam:":date_for_runnability" toDouble:?];
  [v4 bindNamedParam:":capabilities_mask" toInt64:*(a1 + 40)];
}

- (id)dependencyFreeTasksForAllowedCapabilities:(unint64_t)capabilities dateForRunnability:(id)runnability taskType:(int)type
{
  runnabilityCopy = runnability;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__TRITaskDatabase_dependencyFreeTasksForAllowedCapabilities_dateForRunnability_taskType___block_invoke;
  v13[3] = &unk_279DE1F50;
  v14 = runnabilityCopy;
  capabilitiesCopy = capabilities;
  typeCopy = type;
  v9 = runnabilityCopy;
  v10 = MEMORY[0x2743948D0](v13);
  v11 = [(TRITaskDatabase *)self _tasksForQuery:@" SELECT * FROM tasks WHERE rowid NOT IN (SELECT taskId FROM taskDependencies)       AND (startSecondsFromEpoch IS NULL OR startSecondsFromEpoch <= :date_for_runnability)       AND (capabilities & :capabilities_mask) = capabilities       AND (taskType = :task_type)" onPrep:v10];;

  return v11;
}

void __89__TRITaskDatabase_dependencyFreeTasksForAllowedCapabilities_dateForRunnability_taskType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 timeIntervalSince1970];
  [v4 bindNamedParam:":date_for_runnability" toDouble:?];
  [v4 bindNamedParam:":capabilities_mask" toInt64:*(a1 + 40)];
  [v4 bindNamedParam:":task_type" toInt64:*(a1 + 48)];
}

- (id)_tasksForQuery:(id)query onPrep:(id)prep
{
  queryCopy = query;
  prepCopy = prep;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__25;
  v23 = __Block_byref_object_dispose__25;
  v24 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__TRITaskDatabase__tasksForQuery_onPrep___block_invoke;
  v13[3] = &unk_279DE1F78;
  v9 = queryCopy;
  v14 = v9;
  v10 = prepCopy;
  selfCopy = self;
  v16 = v10;
  v17 = &v19;
  v18 = a2;
  [(TRITaskDatabase *)self readTransactionWithFailableBlock:v13];
  v11 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v11;
}

uint64_t __41__TRITaskDatabase__tasksForQuery_onPrep___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v5 = *(a1 + 48);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __41__TRITaskDatabase__tasksForQuery_onPrep___block_invoke_2;
  v34[3] = &unk_279DE1EB0;
  v6 = *(a1 + 32);
  v35 = *(a1 + 40);
  v36 = *(a1 + 56);
  v7 = [*(v35 + 8) generalErrorHandlerWithOutError:0];
  LOBYTE(v6) = [v4 prepAndRunQuery:v6 onPrep:v5 onRow:v34 onError:v7];

  if (v6)
  {
    v8 = objc_opt_new();
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__25;
    v32[4] = __Block_byref_object_dispose__25;
    v33 = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __41__TRITaskDatabase__tasksForQuery_onPrep___block_invoke_138;
    v28[3] = &unk_279DE1ED8;
    v9 = *(a1 + 56);
    v30 = v32;
    v31 = v9;
    v10 = v8;
    v29 = v10;
    v11 = MEMORY[0x2743948D0](v28);
    v12 = [v3 db];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __41__TRITaskDatabase__tasksForQuery_onPrep___block_invoke_2_139;
    v23[3] = &unk_279DE1F00;
    v13 = *(a1 + 64);
    v26 = v32;
    v27 = v13;
    v23[4] = *(a1 + 40);
    v14 = v11;
    v25 = v14;
    v15 = v10;
    v24 = v15;
    v16 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:0];
    v17 = [v12 prepAndRunQuery:@" SELECT * FROM     taskTags ORDER BY     taskId ASC onPrep:rowid ASC;" onRow:0 onError:{v23, v16}];

    if (v17)
    {
      v14[2](v14);
    }

    else
    {
      v20 = *(*(a1 + 56) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = 0;

      LODWORD(a1) = *MEMORY[0x277D42678];
    }

    _Block_object_dispose(v32, 8);
    if (v17)
    {
      a1 = *MEMORY[0x277D42670];
    }

    else
    {
      a1 = a1;
    }
  }

  else
  {
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;

    a1 = *MEMORY[0x277D42678];
  }

  return a1;
}

uint64_t __41__TRITaskDatabase__tasksForQuery_onPrep___block_invoke_2(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getInt64AsNSNumberForColumnName:"rowid" table:0];
  if (!v4)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a1[6] object:a1[4] file:@"TRITaskDatabase.m" lineNumber:545 description:@"read NULL rowid from PRIMARY KEY column"];
  }

  v5 = [v3 getInt64ForColumnName:"taskType" table:0];
  v6 = [v3 getDoubleAsNSNumberForColumnName:"startSecondsFromEpoch" table:0];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v6 doubleValue];
    v8 = [v7 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 getNSDataForColumnName:"serializedTask" table:0];
  if (!v9)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a1[6] object:a1[4] file:@"TRITaskDatabase.m" lineNumber:554 description:@"read NULL serializedTask from NOT NULL column"];
  }

  v10 = [*(a1[4] + 16) taskClassForTaskType:v5];
  if (v10)
  {
    v11 = [v10 parseFromData:v9];
    if (v11)
    {
      v12 = [v3 getInt64ForColumnName:"capabilities" table:0];
      if (v12 == [v11 requiredCapabilities])
      {
        v13 = [TRITaskRecord alloc];
        v14 = [(TRITaskRecord *)v13 initWithTaskId:v4 task:v11 startDate:v8 dependencies:MEMORY[0x277CBEBF8] capabilities:v12 tags:MEMORY[0x277CBEBF8]];
        [*(*(a1[5] + 8) + 40) setObject:v14 forKeyedSubscript:v4];
        v15 = *MEMORY[0x277D42690];

LABEL_19:
        goto LABEL_20;
      }

      v17 = TRILogCategory_Server();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_18:

        v15 = *MEMORY[0x277D42690];
        goto LABEL_19;
      }

      LOWORD(v25) = 0;
      v18 = "task capabilities mismatch in tasks table";
      v19 = v17;
      v20 = 2;
    }

    else
    {
      v17 = TRILogCategory_Server();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v25 = 67109120;
      v26 = v5;
      v18 = "Failure deserializing task of type %d";
      v19 = v17;
      v20 = 8;
    }

    _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, v18, &v25, v20);
    goto LABEL_18;
  }

  v16 = TRILogCategory_Server();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v25 = 67109120;
    v26 = v5;
    _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failure deserializing task of unsupported type %d", &v25, 8u);
  }

  v15 = *MEMORY[0x277D42690];
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __41__TRITaskDatabase__tasksForQuery_onPrep___block_invoke_138(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:?];
    if (v2)
    {
      v3 = [*(a1 + 32) copy];
      v4 = [v2 copyWithReplacementTags:v3];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v4 forKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
    }
  }

  v5 = *(a1 + 32);

  return [v5 removeAllObjects];
}

uint64_t __41__TRITaskDatabase__tasksForQuery_onPrep___block_invoke_2_139(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64AsNSNumberForColumnName:"taskId" table:0];
  if (!v4)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRITaskDatabase.m" lineNumber:615 description:@"read NULL taskId from NOT NULL column"];
  }

  v5 = [v3 getNSStringForColumnName:"tag" table:0];
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRITaskDatabase.m" lineNumber:618 description:@"read NULL tag from NOT NULL column"];
  }

  if (([v4 isEqual:*(*(*(a1 + 56) + 8) + 40)] & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  [*(a1 + 40) addObject:v5];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = MEMORY[0x277D42690];
  return *v8;
}

- (unint64_t)count
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__TRITaskDatabase_count__block_invoke;
  v4[3] = &unk_279DE1FA0;
  v4[4] = &v5;
  [(TRITaskDatabase *)self readTransactionWithFailableBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __24__TRITaskDatabase_count__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__TRITaskDatabase_count__block_invoke_2;
  v5[3] = &unk_279DDFC98;
  v5[4] = *(a1 + 32);
  [v3 prepAndRunQuery:@"SELECT count(*) FROM tasks" onPrep:0 onRow:v5 onError:0];

  return *MEMORY[0x277D42670];
}

- (BOOL)updateTaskWithTaskId:(id)id startDate:(id)date task:(id)task
{
  idCopy = id;
  dateCopy = date;
  taskCopy = task;
  if (idCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:660 description:{@"Invalid parameter not satisfying: %@", @"startDate != nil"}];

    if (taskCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:661 description:{@"Invalid parameter not satisfying: %@", @"task != nil"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:659 description:{@"Invalid parameter not satisfying: %@", @"taskId != nil"}];

  if (!dateCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!taskCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__TRITaskDatabase_updateTaskWithTaskId_startDate_task___block_invoke;
  v20[3] = &unk_279DE17A8;
  v12 = idCopy;
  v21 = v12;
  v13 = dateCopy;
  v22 = v13;
  v14 = taskCopy;
  v23 = v14;
  selfCopy = self;
  v25 = &v26;
  [(TRITaskDatabase *)self writeTransactionWithFailableBlock:v20];
  v15 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v15;
}

uint64_t __55__TRITaskDatabase_updateTaskWithTaskId_startDate_task___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__TRITaskDatabase_updateTaskWithTaskId_startDate_task___block_invoke_2;
  v14[3] = &unk_279DE1780;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v5 = [*(*(a1 + 56) + 8) generalErrorHandlerWithOutError:0];
  v6 = [v4 prepAndRunQuery:@" UPDATE tasks SET     startSecondsFromEpoch = :start_seconds_from_epoch onPrep:serializedTask = :serialized_task onRow:hash = :hash WHERE     rowid = :task_id;" onError:{v14, 0, v5}];

  if (v6)
  {
    v7 = [v3 db];
    v8 = sqlite3_changes([v7 handle]);

    if (v8)
    {
      v9 = MEMORY[0x277D42670];
      v10 = 1;
    }

    else
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "updateStartDateForTaskId: called with invalid id", v13, 2u);
      }

      v10 = 0;
      v9 = MEMORY[0x277D42670];
    }
  }

  else
  {
    v10 = 0;
    v9 = MEMORY[0x277D42678];
  }

  *(*(*(a1 + 64) + 8) + 24) = v10;

  return *v9;
}

void __55__TRITaskDatabase_updateTaskWithTaskId_startDate_task___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:":task_id" toInt64AsNSNumber:v3];
  [*(a1 + 40) timeIntervalSince1970];
  [v5 bindNamedParam:":start_seconds_from_epoch" toDouble:?];
  v4 = [*(a1 + 48) serialize];
  [v5 bindNamedParam:":serialized_task" toNSData:v4];

  [v5 bindNamedParam:":hash" toInt64:{objc_msgSend(*(a1 + 48), "hash")}];
}

- (BOOL)updateTaskWithTaskId:(id)id capabilities:(unint64_t)capabilities task:(id)task
{
  idCopy = id;
  taskCopy = task;
  v10 = taskCopy;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:701 description:{@"Invalid parameter not satisfying: %@", @"taskId != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:702 description:{@"Invalid parameter not satisfying: %@", @"task != nil"}];

    goto LABEL_3;
  }

  if (!taskCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__TRITaskDatabase_updateTaskWithTaskId_capabilities_task___block_invoke;
  v17[3] = &unk_279DE1758;
  v11 = idCopy;
  v18 = v11;
  v12 = v10;
  v19 = v12;
  selfCopy = self;
  v21 = &v22;
  [(TRITaskDatabase *)self writeTransactionWithFailableBlock:v17];
  v13 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v13;
}

uint64_t __58__TRITaskDatabase_updateTaskWithTaskId_capabilities_task___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__TRITaskDatabase_updateTaskWithTaskId_capabilities_task___block_invoke_2;
  v14[3] = &unk_279DDFB20;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v5 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:0];
  v6 = [v4 prepAndRunQuery:@" UPDATE tasks SET     capabilities = :capabilities_mask onPrep:serializedTask = :serialized_task onRow:hash = :hash WHERE     rowid = :task_id;" onError:{v14, 0, v5}];

  if (v6)
  {
    v7 = [v3 db];
    v8 = sqlite3_changes([v7 handle]);

    if (v8)
    {
      v9 = MEMORY[0x277D42670];
      v10 = 1;
    }

    else
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "updateCapabilitiesForTaskId: called with invalid id", v13, 2u);
      }

      v10 = 0;
      v9 = MEMORY[0x277D42670];
    }
  }

  else
  {
    v10 = 0;
    v9 = MEMORY[0x277D42678];
  }

  *(*(*(a1 + 56) + 8) + 24) = v10;

  return *v9;
}

void __58__TRITaskDatabase_updateTaskWithTaskId_capabilities_task___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:":task_id" toInt64AsNSNumber:v3];
  [v5 bindNamedParam:":capabilities_mask" toInt64:{objc_msgSend(*(a1 + 40), "requiredCapabilities")}];
  v4 = [*(a1 + 40) serialize];
  [v5 bindNamedParam:":serialized_task" toNSData:v4];

  [v5 bindNamedParam:":hash" toInt64:{objc_msgSend(*(a1 + 40), "hash")}];
}

- (BOOL)enumerateTasksWithTagsIntersectingTagSet:(id)set block:(id)block
{
  setCopy = set;
  blockCopy = block;
  if (!setCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:743 description:{@"Invalid parameter not satisfying: %@", @"tagSet"}];
  }

  if (![setCopy count])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:744 description:{@"Invalid parameter not satisfying: %@", @"tagSet.count > 0"}];
  }

  allTasks = [(TRITaskDatabase *)self allTasks];
  if (allTasks)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__TRITaskDatabase_enumerateTasksWithTagsIntersectingTagSet_block___block_invoke;
    v13[3] = &unk_279DE1FC8;
    v14 = setCopy;
    v15 = blockCopy;
    [allTasks enumerateKeysAndObjectsUsingBlock:v13];
  }

  return allTasks != 0;
}

void __66__TRITaskDatabase_enumerateTasksWithTagsIntersectingTagSet_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = MEMORY[0x277CBEB98];
  v9 = [v5 tags];
  v10 = [v8 setWithArray:v9];
  LODWORD(v7) = [v7 intersectsSet:v10];

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v6);
}

- (id)taskIdsWithTag:(id)tag
{
  tagCopy = tag;
  if (!tagCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:766 description:{@"Invalid parameter not satisfying: %@", @"tag"}];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__25;
  v19 = __Block_byref_object_dispose__25;
  v20 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__TRITaskDatabase_taskIdsWithTag___block_invoke;
  v10[3] = &unk_279DE1FF0;
  v6 = tagCopy;
  v11 = v6;
  selfCopy = self;
  v13 = &v15;
  v14 = a2;
  [(TRITaskDatabase *)self readTransactionWithFailableBlock:v10];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

uint64_t __34__TRITaskDatabase_taskIdsWithTag___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__TRITaskDatabase_taskIdsWithTag___block_invoke_2;
  v11[3] = &unk_279DDF860;
  v12 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:{0, MEMORY[0x277D85DD0], 3221225472, __34__TRITaskDatabase_taskIdsWithTag___block_invoke_3, &unk_279DE1EB0, *(a1 + 40), *(a1 + 48), *(a1 + 56), v11[0], 3221225472, __34__TRITaskDatabase_taskIdsWithTag___block_invoke_2, &unk_279DDF860}];
  v5 = [v3 prepAndRunQuery:@" SELECT taskId FROM     taskTags WHERE     tag = :tag ORDER BY taskId ASC;" onPrep:v11 onRow:&v10 onError:v4];

  if (v5)
  {
    v6 = MEMORY[0x277D42670];
  }

  else
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v6 = MEMORY[0x277D42678];
  }

  return *v6;
}

uint64_t __34__TRITaskDatabase_taskIdsWithTag___block_invoke_3(void *a1, void *a2)
{
  v3 = [a2 getInt64AsNSNumberForColumnName:"taskId" table:0];
  if (!v3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a1[6] object:a1[4] file:@"TRITaskDatabase.m" lineNumber:782 description:@"read NULL taskId from NOT NULL column"];
  }

  [*(*(a1[5] + 8) + 40) addObject:v3];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (BOOL)_checkTaskId:(id)id IsPresent:(BOOL *)present transaction:(id)transaction
{
  idCopy = id;
  transactionCopy = transaction;
  if (idCopy)
  {
    if (present)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:803 description:{@"Invalid parameter not satisfying: %@", @"isPresent"}];

    if (transactionCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:804 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:802 description:{@"Invalid parameter not satisfying: %@", @"taskId != nil"}];

  if (!present)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!transactionCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  *present = 0;
  v11 = [transactionCopy db];
  v20[4] = present;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__TRITaskDatabase__checkTaskId_IsPresent_transaction___block_invoke;
  v21[3] = &unk_279DDF860;
  v22 = idCopy;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__TRITaskDatabase__checkTaskId_IsPresent_transaction___block_invoke_2;
  v20[3] = &__block_descriptor_40_e49___PASDBIterAction__B_16__0___PASSqliteStatement_8l;
  db = self->_db;
  v13 = idCopy;
  v14 = [(TRIDatabase *)db generalErrorHandlerWithOutError:0];
  v15 = [v11 prepAndRunQuery:@" SELECT 1 FROM     tasks WHERE     rowid = :task_id LIMIT 1;" onPrep:v21 onRow:v20 onError:v14];

  return v15;
}

- (id)directDependenciesOfTaskWithId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:828 description:{@"Invalid parameter not satisfying: %@", @"taskId != nil"}];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__25;
  v18 = __Block_byref_object_dispose__25;
  v19 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__TRITaskDatabase_directDependenciesOfTaskWithId___block_invoke;
  v10[3] = &unk_279DE1FF0;
  v10[4] = self;
  v6 = idCopy;
  v11 = v6;
  v12 = &v14;
  v13 = a2;
  [(TRITaskDatabase *)self readTransactionWithFailableBlock:v10];
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

uint64_t __50__TRITaskDatabase_directDependenciesOfTaskWithId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0;
  if (![*(a1 + 32) _checkTaskId:*(a1 + 40) IsPresent:&v18 transaction:v3])
  {
LABEL_11:
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    v9 = *MEMORY[0x277D42678];
    goto LABEL_12;
  }

  if ((v18 & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "directDependenciesOfTaskWithId invoked with missing taskId", buf, 2u);
    }

    goto LABEL_11;
  }

  v4 = [v3 db];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__TRITaskDatabase_directDependenciesOfTaskWithId___block_invoke_183;
  v15[3] = &unk_279DDF860;
  v16 = *(a1 + 40);
  v5 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:{0, MEMORY[0x277D85DD0], 3221225472, __50__TRITaskDatabase_directDependenciesOfTaskWithId___block_invoke_2, &unk_279DE1EB0, *(a1 + 32), *(a1 + 48), *(a1 + 56), v15[0], 3221225472, __50__TRITaskDatabase_directDependenciesOfTaskWithId___block_invoke_183, &unk_279DDF860}];
  v6 = [v4 prepAndRunQuery:@" SELECT dependentTaskId FROM     taskDependencies WHERE     taskId = :task_id ORDER BY dependentTaskId ASC;" onPrep:v15 onRow:&v14 onError:v5];

  if ((v6 & 1) == 0)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    LODWORD(v4) = *MEMORY[0x277D42678];
  }

  if (v6)
  {
    v9 = *MEMORY[0x277D42670];
  }

  else
  {
    v9 = v4;
  }

LABEL_12:

  return v9;
}

uint64_t __50__TRITaskDatabase_directDependenciesOfTaskWithId___block_invoke_2(void *a1, void *a2)
{
  v3 = [a2 getInt64AsNSNumberForColumnName:"dependentTaskId" table:0];
  if (!v3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a1[6] object:a1[4] file:@"TRITaskDatabase.m" lineNumber:864 description:@"read NULL dependentTaskId from NOT NULL column"];
  }

  [*(*(a1[5] + 8) + 40) addObject:v3];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (id)tasksDependentOnTask:(id)task
{
  taskCopy = task;
  if (!taskCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:883 description:{@"Invalid parameter not satisfying: %@", @"taskId != nil"}];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__25;
  v18 = __Block_byref_object_dispose__25;
  v19 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__TRITaskDatabase_tasksDependentOnTask___block_invoke;
  v10[3] = &unk_279DE1FF0;
  v10[4] = self;
  v6 = taskCopy;
  v11 = v6;
  v12 = &v14;
  v13 = a2;
  [(TRITaskDatabase *)self readTransactionWithFailableBlock:v10];
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

uint64_t __40__TRITaskDatabase_tasksDependentOnTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0;
  if (![*(a1 + 32) _checkTaskId:*(a1 + 40) IsPresent:&v19 transaction:v3])
  {
LABEL_8:
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v11 = *MEMORY[0x277D42678];
    goto LABEL_11;
  }

  if ((v19 & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "tasksDependentOnTask invoked with missing taskId", buf, 2u);
    }

    goto LABEL_8;
  }

  v4 = [v3 db];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__TRITaskDatabase_tasksDependentOnTask___block_invoke_187;
  v16[3] = &unk_279DDF860;
  v17 = *(a1 + 40);
  v5 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:{0, MEMORY[0x277D85DD0], 3221225472, __40__TRITaskDatabase_tasksDependentOnTask___block_invoke_2, &unk_279DE1EB0, *(a1 + 32), *(a1 + 48), *(a1 + 56), v16[0], 3221225472, __40__TRITaskDatabase_tasksDependentOnTask___block_invoke_187, &unk_279DDF860}];
  v6 = [v4 prepAndRunQuery:@" SELECT taskId FROM     taskDependencies WHERE     dependentTaskId = :task_id ORDER BY taskId ASC;" onPrep:v16 onRow:&v15 onError:v5];

  if (v6)
  {
    v7 = MEMORY[0x277D42670];
  }

  else
  {
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    v7 = MEMORY[0x277D42678];
  }

  v11 = *v7;

LABEL_11:
  return v11;
}

uint64_t __40__TRITaskDatabase_tasksDependentOnTask___block_invoke_2(void *a1, void *a2)
{
  v3 = [a2 getInt64AsNSNumberForColumnName:"taskId" table:0];
  if (!v3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a1[6] object:a1[4] file:@"TRITaskDatabase.m" lineNumber:918 description:@"read NULL taskId from NOT NULL column"];
  }

  [*(*(a1[5] + 8) + 40) addObject:v3];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (id)idForTask:(id)task
{
  taskCopy = task;
  if (!taskCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskDatabase.m" lineNumber:935 description:{@"Invalid parameter not satisfying: %@", @"task"}];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__25;
  v19 = __Block_byref_object_dispose__25;
  v20 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__TRITaskDatabase_idForTask___block_invoke;
  v10[3] = &unk_279DE1FF0;
  v6 = taskCopy;
  v11 = v6;
  selfCopy = self;
  v13 = &v15;
  v14 = a2;
  [(TRITaskDatabase *)self readTransactionWithFailableBlock:v10];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

uint64_t __29__TRITaskDatabase_idForTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __29__TRITaskDatabase_idForTask___block_invoke_2;
  v17[3] = &unk_279DDF860;
  v18 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __29__TRITaskDatabase_idForTask___block_invoke_3;
  v13[3] = &unk_279DE2018;
  v16 = *(a1 + 56);
  v12 = *(a1 + 32);
  v4 = v12.i64[0];
  v14 = vextq_s8(v12, v12, 8uLL);
  v5 = *(a1 + 40);
  v15 = *(a1 + 48);
  v6 = [*(v5 + 8) generalErrorHandlerWithOutError:0];
  v7 = [v3 prepAndRunQuery:@" SELECT * FROM     tasks WHERE     hash = :hash;" onPrep:v17 onRow:v13 onError:v6];

  if (v7)
  {
    v8 = MEMORY[0x277D42670];
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v8 = MEMORY[0x277D42678];
  }

  return *v8;
}

void __29__TRITaskDatabase_idForTask___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":hash" toInt64:{objc_msgSend(v2, "hash")}];
}

uint64_t __29__TRITaskDatabase_idForTask___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"taskType" table:0];
  v5 = [*(*(a1 + 32) + 16) taskClassForTaskType:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 getNSDataForColumnName:"serializedTask" table:0];
    if (!v7)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRITaskDatabase.m" lineNumber:961 description:@"read NULL serializedTask from NOT NULL column"];
    }

    v8 = [v6 parseFromData:v7];
    if (v8 && [*(a1 + 40) isEqual:v8])
    {
      v9 = [v3 getInt64AsNSNumberForColumnName:"rowid" table:0];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v18 = [MEMORY[0x277CCA890] currentHandler];
        [v18 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRITaskDatabase.m" lineNumber:970 description:@"read NULL rowid from PRIMARY KEY column"];
      }

      v12 = MEMORY[0x277D42698];
    }

    else
    {
      v12 = MEMORY[0x277D42690];
    }

    v13 = *v12;
  }

  else
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19[0] = 67109120;
      v19[1] = v4;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failure deserializing task of unsupported type %d", v19, 8u);
    }

    v13 = *MEMORY[0x277D42690];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (int)taskTypeForTaskWithId:(id)id
{
  idCopy = id;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__TRITaskDatabase_taskTypeForTaskWithId___block_invoke;
  v8[3] = &unk_279DE1FF0;
  v6 = idCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v13;
  v12 = a2;
  [(TRITaskDatabase *)self readTransactionWithFailableBlock:v8];
  LODWORD(a2) = *(v14 + 6);

  _Block_object_dispose(&v13, 8);
  return a2;
}

uint64_t __41__TRITaskDatabase_taskTypeForTaskWithId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 32))
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"TRITaskDatabase.m" lineNumber:992 description:{@"Invalid parameter not satisfying: %@", @"taskId != nil"}];
  }

  v4 = [v3 db];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__TRITaskDatabase_taskTypeForTaskWithId___block_invoke_2;
  v14[3] = &unk_279DDF860;
  v15 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__TRITaskDatabase_taskTypeForTaskWithId___block_invoke_3;
  v13[3] = &unk_279DDFC98;
  v5 = *(a1 + 40);
  v13[4] = *(a1 + 48);
  v6 = [*(v5 + 8) generalErrorHandlerWithOutError:0];
  v7 = [v4 prepAndRunQuery:@" SELECT     taskType FROM     tasks WHERE     rowid = :task_id LIMIT 1;" onPrep:v14 onRow:v13 onError:v6];

  v8 = MEMORY[0x277D42670];
  v9 = MEMORY[0x277D42678];

  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return *v10;
}

@end