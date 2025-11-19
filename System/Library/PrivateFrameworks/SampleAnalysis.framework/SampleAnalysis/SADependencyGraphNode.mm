@interface SADependencyGraphNode
+ (id)dependencyGraphForThreadsInSampleStore:(id)a3 atTimestamp:(id)a4;
- (SADependencyGraphNode)dependency;
- (id)debugDescription;
@end

@implementation SADependencyGraphNode

- (SADependencyGraphNode)dependency
{
  WeakRetained = objc_loadWeakRetained(&self->_dependency);

  return WeakRetained;
}

+ (id)dependencyGraphForThreadsInSampleStore:(id)a3 atTimestamp:(id)a4
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __76__SADependencyGraphNode_dependencyGraphForThreadsInSampleStore_atTimestamp___block_invoke;
  v22[3] = &unk_1E86F5D08;
  v22[4] = a4;
  v8 = v7;
  v23 = v8;
  [a3 enumerateTasks:v22];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__SADependencyGraphNode_dependencyGraphForThreadsInSampleStore_atTimestamp___block_invoke_3;
  v17[3] = &unk_1E86F7270;
  v10 = v8;
  v18 = v10;
  v19 = v9;
  v20 = a3;
  v21 = a4;
  v11 = v9;
  [v10 enumerateKeysAndObjectsUsingBlock:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__SADependencyGraphNode_dependencyGraphForThreadsInSampleStore_atTimestamp___block_invoke_21;
  v15[3] = &unk_1E86F7298;
  v16 = v10;
  v12 = v10;
  [v12 enumerateKeysAndObjectsUsingBlock:v15];
  v13 = [v12 copy];

  objc_autoreleasePoolPop(v6);

  return v13;
}

void __76__SADependencyGraphNode_dependencyGraphForThreadsInSampleStore_atTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 taskStates];
  v5 = [v4 count];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = [a2 lastTaskStateOnOrBeforeTime:*(a1 + 32) sampleIndex:0x7FFFFFFFFFFFFFFFLL];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 startTimestamp];
    if ([v8 gt:*(a1 + 32)])
    {

      goto LABEL_8;
    }

    v9 = [v7 endTimestamp];
    v10 = [v9 lt:*(a1 + 32)];

    if (v10)
    {
      goto LABEL_8;
    }

LABEL_7:
    v11 = [a2 threads];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__SADependencyGraphNode_dependencyGraphForThreadsInSampleStore_atTimestamp___block_invoke_2;
    v12[3] = &unk_1E86F7248;
    v12[4] = *(a1 + 32);
    v12[5] = a2;
    v7 = v7;
    v13 = v7;
    v14 = *(a1 + 40);
    [v11 enumerateKeysAndObjectsUsingBlock:v12];
  }

LABEL_8:
}

void __76__SADependencyGraphNode_dependencyGraphForThreadsInSampleStore_atTimestamp___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = [a3 lastThreadStateOnOrBeforeTime:a1[4] sampleIndex:0x7FFFFFFFFFFFFFFFLL];
  if (v5)
  {
    obj = v5;
    v6 = [v5 startTimestamp];
    if (([v6 gt:a1[4]] & 1) == 0)
    {
      v7 = [obj endTimestamp];
      v8 = [v7 lt:a1[4]];

      v5 = obj;
      if (v8)
      {
        goto LABEL_9;
      }

      v9 = [SADependencyGraphNode alloc];
      if (v9)
      {
        v11 = a1[5];
        v10 = a1[6];
        v16.receiver = v9;
        v16.super_class = SADependencyGraphNode;
        v12 = objc_msgSendSuper2(&v16, sel_init);
        v6 = v12;
        if (v12)
        {
          objc_storeStrong(v12 + 2, v11);
          objc_storeStrong(v6 + 3, v10);
          objc_storeStrong(v6 + 4, a3);
          objc_storeStrong(v6 + 5, obj);
        }
      }

      else
      {
        v6 = 0;
      }

      v13 = a1[7];
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a3, "threadId")}];
      [v13 setObject:v6 forKeyedSubscript:v14];
    }

    v5 = obj;
  }

LABEL_9:
}

void __76__SADependencyGraphNode_dependencyGraphForThreadsInSampleStore_atTimestamp___block_invoke_3(void *a1, uint64_t a2, id *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [a3 threadState];
  v6 = [v5 turnstileInfo];

  v7 = [a3 threadState];
  v8 = [v7 waitInfo];

  v9 = [v6 blockingTid];
  if (!v9)
  {
    v9 = [v8 blockingTid];
    if (!v9)
    {
      if ([v6 blockingPid] == -1)
      {
        v14 = v8;
      }

      else
      {
        v14 = v6;
      }

      v15 = [v14 blockingPid];
      if ((v15 - 1) > 0xFFFFFFFD)
      {
        goto LABEL_6;
      }

      v16 = v15;
      v17 = a1[5];
      v18 = [MEMORY[0x1E696AD98] numberWithInt:v15];
      v19 = [v17 objectForKeyedSubscript:v18];

      if (v19)
      {
        if (!a3)
        {
LABEL_14:

          goto LABEL_6;
        }

LABEL_13:
        objc_setProperty_atomic(a3, v20, v19, 56);
        goto LABEL_14;
      }

      v21 = [(SASampleStore *)a1[6] taskWithPid:v16 atTimestamp:a1[7]];
      if (!v21)
      {
        v28 = *__error();
        v29 = _sa_logt();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [a3 debugDescription];
          *buf = 138412546;
          v40 = v30;
          v41 = 1024;
          LODWORD(v42) = v16;
          _os_log_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_INFO, "%@ blocked by non-existent task [%d]", buf, 0x12u);
        }

        v19 = 0;
        *__error() = v28;
        goto LABEL_14;
      }

      v22 = v21;
      v23 = [v21 taskStates];
      v24 = [v23 count];

      if (v24)
      {
        v25 = [v22 lastTaskStateOnOrBeforeTime:a1[7] sampleIndex:0x7FFFFFFFFFFFFFFFLL];
        v26 = v25;
        if (!v25)
        {
LABEL_25:
          v32 = *__error();
          v33 = _sa_logt();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = [a3 debugDescription];
            v35 = [v22 debugDescription];
            *buf = 138412546;
            v40 = v34;
            v41 = 2112;
            v42 = v35;
            _os_log_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_INFO, "%@ blocked by %@ which isn't alive at this time", buf, 0x16u);
          }

          *__error() = v32;
          v19 = 0;
          goto LABEL_14;
        }

        v27 = [v25 startTimestamp];
        if ([v27 gt:a1[7]])
        {

          goto LABEL_25;
        }

        v31 = [v26 endTimestamp];
        v38 = [v31 lt:a1[7]];

        if (v38)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v26 = 0;
      }

      v19 = [[SADependencyGraphTaskNode alloc] initWithTask:v22 taskState:v26];
      v36 = a1[5];
      v37 = [MEMORY[0x1E696AD98] numberWithInt:v16];
      [v36 setObject:v19 forKeyedSubscript:v37];

      if (!a3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v10 = a1[4];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
  v12 = [v10 objectForKeyedSubscript:v11];
  if (a3)
  {
    objc_storeWeak(a3 + 6, v12);
  }

LABEL_6:
  v13 = *MEMORY[0x1E69E9840];
}

void __76__SADependencyGraphNode_dependencyGraphForThreadsInSampleStore_atTimestamp___block_invoke_21(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a3 || (a3[10] & 1) == 0)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    v6 = MEMORY[0x1E696AD98];
    v7 = [a3 thread];
    v8 = [v6 numberWithUnsignedLongLong:{objc_msgSend(v7, "threadId")}];
    v21 = [v5 initWithObjects:{v8, 0}];

    v9 = [a3 dependency];
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v9)
    {
      while (1)
      {
        if (v9[10])
        {
          if ([v9 isBlockedByADeadlock])
          {
            v10 = [v21 count];
            goto LABEL_13;
          }

LABEL_11:
          v10 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_13;
        }

        v11 = [v9 thread];
        v12 = [v11 threadId];

        if (!v12)
        {
          goto LABEL_11;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
        v14 = [v21 indexOfObject:v13];

        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
        [v21 addObject:v15];

        v16 = [v9 dependency];

        v9 = v16;
        if (!v16)
        {
          goto LABEL_11;
        }
      }

      v10 = v14;
    }

LABEL_13:

    if ([v21 count])
    {
      v17 = 0;
      do
      {
        v18 = *(a1 + 32);
        v19 = [v21 objectAtIndexedSubscript:v17];
        v20 = [v18 objectForKeyedSubscript:v19];

        if (v20)
        {
          v20[10] = 1;
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20[9] = 1;
            if (v17 >= v10)
            {
              v20[8] = 1;
            }
          }
        }

        ++v17;
      }

      while (v17 < [v21 count]);
    }
  }
}

- (id)debugDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_dependency);

  if (WeakRetained)
  {
    v62 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [(SATask *)self->_task debugDescription];
    v59 = [(SAThread *)self->_thread threadId];
    v5 = [(SAThreadState *)self->_threadState dispatchQueue];
    v6 = [v5 dispatchQueueLabel];
    v7 = v6;
    v66 = v4;
    if (v6)
    {
      v64 = 0;
      v57 = v6;
    }

    else
    {
      v54 = [(SAThreadState *)self->_threadState swiftTask];
      v16 = [v54 debugDescription];
      if (v16)
      {
        v64 = 0;
        v53 = v16;
        v57 = v16;
      }

      else
      {
        v19 = [(SAThreadState *)self->_threadState name];
        v53 = 0;
        v20 = &stru_1F5BBF440;
        v49 = v19;
        if (v19)
        {
          v20 = v19;
        }

        v57 = v20;
        v64 = 1;
      }
    }

    v61 = objc_loadWeakRetained(&self->_dependency);
    v60 = [v61 task];
    v21 = [v60 debugDescription];
    v58 = objc_loadWeakRetained(&self->_dependency);
    v22 = [v58 thread];
    v23 = [v22 threadId];
    v24 = objc_loadWeakRetained(&self->_dependency);
    v25 = [v24 threadState];
    v26 = [v25 dispatchQueue];
    v27 = [v26 dispatchQueueLabel];
    v28 = v27;
    if (v27)
    {
      v43 = v23;
      v10 = v66;
      v17 = [v62 initWithFormat:@"%@ thread 0x%llx (%@) blocked by %@ thread 0x%llx (%@)", v66, v59, v57, v21, v43, v27];
    }

    else
    {
      v56 = v5;
      v52 = objc_loadWeakRetained(&self->_dependency);
      v51 = [v52 threadState];
      v50 = [v51 swiftTask];
      v29 = [v50 debugDescription];
      v30 = v29;
      if (v29)
      {
        v44 = v23;
        v10 = v66;
        v17 = [v62 initWithFormat:@"%@ thread 0x%llx (%@) blocked by %@ thread 0x%llx (%@)", v66, v59, v57, v21, v44, v29];
      }

      else
      {
        v48 = objc_loadWeakRetained(&self->_dependency);
        v47 = [v48 threadState];
        v31 = [v47 name];
        v46 = v31;
        v32 = &stru_1F5BBF440;
        if (v31)
        {
          v32 = v31;
        }

        v45 = v23;
        v10 = v66;
        v17 = [v62 initWithFormat:@"%@ thread 0x%llx (%@) blocked by %@ thread 0x%llx (%@)", v66, v59, v57, v21, v45, v32];
      }

      v5 = v56;
    }

    if (v64)
    {
    }

    if (!v7)
    {
    }
  }

  else
  {
    taskDependency = self->_taskDependency;
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = [(SATask *)self->_task debugDescription];
    v11 = [(SAThread *)self->_thread threadId];
    v55 = [(SAThreadState *)self->_threadState dispatchQueue];
    v12 = [v55 dispatchQueueLabel];
    v7 = v12;
    if (taskDependency)
    {
      v13 = v10;
      if (v12)
      {
        v14 = 0;
        v15 = v12;
      }

      else
      {
        v65 = [(SAThreadState *)self->_threadState swiftTask];
        v18 = [v65 debugDescription];
        taskDependency = v18;
        if (v18)
        {
          v14 = 0;
          v15 = v18;
        }

        else
        {
          v36 = [(SAThreadState *)self->_threadState name];
          v63 = v36;
          if (v36)
          {
            v15 = v36;
          }

          else
          {
            v15 = &stru_1F5BBF440;
          }

          v14 = 1;
        }
      }

      v37 = [(SADependencyGraphTaskNode *)self->_taskDependency task];
      v38 = [v37 debugDescription];
      v17 = [v9 initWithFormat:@"%@ thread 0x%llx (%@) blocked by %@", v13, v11, v15, v38];

      if (v14)
      {
      }

      if (!v7)
      {
      }

      v10 = v13;
    }

    else if (v12)
    {
      v17 = [v9 initWithFormat:@"%@ thread 0x%llx (%@)", v10, v11, v12];
    }

    else
    {
      v33 = [(SAThreadState *)self->_threadState swiftTask];
      v34 = [v33 debugDescription];
      v35 = v34;
      if (v34)
      {
        v17 = [v9 initWithFormat:@"%@ thread 0x%llx (%@)", v10, v11, v34];
      }

      else
      {
        v40 = [(SAThreadState *)self->_threadState name];
        v41 = v40;
        v42 = &stru_1F5BBF440;
        if (v40)
        {
          v42 = v40;
        }

        v17 = [v9 initWithFormat:@"%@ thread 0x%llx (%@)", v10, v11, v42];
      }

      v7 = 0;
    }

    v5 = v55;
  }

  return v17;
}

@end