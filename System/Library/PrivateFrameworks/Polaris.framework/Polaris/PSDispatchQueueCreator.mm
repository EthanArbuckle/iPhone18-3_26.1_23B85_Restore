@interface PSDispatchQueueCreator
+ (id)createGCDQueueWithQOS:(unint64_t)a3 key:(id)a4;
+ (id)createPthreadBackedGCDQueueWithQoS:(unint64_t)a3 key:(id)a4 width:(unsigned __int8)a5;
+ (int)pthreadPriorityForQoSClass:(unint64_t)a3;
+ (unsigned)dispatchQoSClass:(unint64_t)a3;
@end

@implementation PSDispatchQueueCreator

+ (unsigned)dispatchQoSClass:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = 21;
  }

  else
  {
    v3 = 9;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 33;
  }
}

+ (int)pthreadPriorityForQoSClass:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = 50;
  }

  else
  {
    v3 = 45;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 60;
  }
}

+ (id)createPthreadBackedGCDQueueWithQoS:(unint64_t)a3 key:(id)a4 width:(unsigned __int8)a5
{
  v14 = *MEMORY[0x277D85DE8];
  memset(&v13, 0, sizeof(v13));
  v12 = 0;
  v8 = a4;
  [a4 UTF8String];
  v9 = 0;
  if (!pthread_attr_init(&v13))
  {
    if (pthread_attr_setschedpolicy(&v13, 4) || pthread_attr_getschedparam(&v13, &v12) || (v12.sched_priority = [a1 pthreadPriorityForQoSClass:a3], pthread_attr_setschedparam(&v13, &v12)) || pthread_attr_setdetachstate(&v13, 1))
    {
      v9 = 0;
    }

    else
    {
      v9 = dispatch_pthread_root_queue_create();
    }

    pthread_attr_destroy(&v13);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __71__PSDispatchQueueCreator_createPthreadBackedGCDQueueWithQoS_key_width___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = ps_util_pthread_setname(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v3 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v2;
      _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_ERROR, "ps_util_pthread_setname failed with return code %d", v5, 8u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)createGCDQueueWithQOS:(unint64_t)a3 key:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "Creating GCD queue for %@", &v10, 0xCu);
  }

  if (!v5)
  {
    [PSDispatchQueueCreator createGCDQueueWithQOS:? key:?];
  }

  v7 = [PSDispatchQueueCreator createPthreadBackedGCDQueueWithQoS:a3 key:v5 width:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (uint64_t)createGCDQueueWithQOS:(char *)a1 key:.cold.1(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Aborting since no key specified for creating GCD queue.");
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "+[PSDispatchQueueCreator createGCDQueueWithQOS:key:]";
    v10 = 1024;
    v11 = 90;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Aborting since no key specified for creating GCD queue.", &v8, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "+[PSDispatchQueueCreator createGCDQueueWithQOS:key:]";
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v8, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  abort_with_reason();
  return sub_25EB6DFA8();
}

@end