@interface _PASPosixPipeContext
- (int)setupWithSubprocessFd:(int)fd fileActions:(void *)actions queue:(id)queue group:(id)group readErrno:(int *)errno;
- (void)startReadWithHandler:(id)handler;
@end

@implementation _PASPosixPipeContext

- (void)startReadWithHandler:(id)handler
{
  handlerCopy = handler;
  [(NSFileHandle *)self->_writeHandle closeFile];
  queue = self->_queue;
  readChannel = self->_readChannel;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45___PASPosixPipeContext_startReadWithHandler___block_invoke;
  v8[3] = &unk_1E77F2268;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_io_read(readChannel, 0, 0xFFFFFFFFFFFFFFFFLL, queue, v8);
}

- (int)setupWithSubprocessFd:(int)fd fileActions:(void *)actions queue:(id)queue group:(id)group readErrno:(int *)errno
{
  v36 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  groupCopy = group;
  if (pipe(v35))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = __error();
      v25 = strerror(*v24);
      v26 = *__error();
      *buf = 136315394;
      v32 = v25;
      v33 = 1024;
      v34 = v26;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "runCommandWithPath failed to create pipe: %s (%d)", buf, 0x12u);
    }

    v15 = -1;
  }

  else
  {
    v16 = v35[0];
    v17 = v35[1];
    posix_spawn_file_actions_addclose(actions, v35[0]);
    posix_spawn_file_actions_adddup2(actions, v17, fd);
    posix_spawn_file_actions_addclose(actions, v17);
    v18 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v17 closeOnDealloc:1];
    writeHandle = self->_writeHandle;
    self->_writeHandle = v18;

    dispatch_group_enter(groupCopy);
    cleanup_handler[0] = MEMORY[0x1E69E9820];
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = __80___PASPosixPipeContext_setupWithSubprocessFd_fileActions_queue_group_readErrno___block_invoke;
    cleanup_handler[3] = &unk_1E77F2240;
    v30 = v16;
    errnoCopy = errno;
    v28 = groupCopy;
    v20 = dispatch_io_create(0, v16, queueCopy, cleanup_handler);
    readChannel = self->_readChannel;
    self->_readChannel = v20;

    dispatch_io_set_high_water(self->_readChannel, 0x8000uLL);
    objc_storeStrong(&self->_queue, queue);

    v15 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

@end