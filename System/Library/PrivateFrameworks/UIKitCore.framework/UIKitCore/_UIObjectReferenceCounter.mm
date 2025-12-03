@interface _UIObjectReferenceCounter
- (void)decrementReferenceForObject:(id)object invalidationHandler:(id)handler;
- (void)incrementReferenceForObject:(id)object;
@end

@implementation _UIObjectReferenceCounter

- (void)incrementReferenceForObject:(id)object
{
  v19 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objectReferences = self->_objectReferences;
  if (!objectReferences)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v7 = self->_objectReferences;
    self->_objectReferences = v6;

    objectReferences = self->_objectReferences;
  }

  v8 = [(NSCountedSet *)objectReferences countForObject:objectCopy];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E208);
  if (*CategoryCachedImpl)
  {
    v11 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "[_UIObjectReferenceCounter incrementReferenceForObject:]";
      v15 = 2112;
      v16 = objectCopy;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s: reference map for object %@: existing entry is %ld", &v13, 0x20u);
    }
  }

  v10 = __UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E210);
  if (*v10)
  {
    v12 = *(v10 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "[_UIObjectReferenceCounter incrementReferenceForObject:]";
      v15 = 2112;
      v16 = objectCopy;
      v17 = 2048;
      v18 = v8 + 1;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s: Updating reference map for object %@ with count %ld", &v13, 0x20u);
    }
  }

  [(NSCountedSet *)self->_objectReferences addObject:objectCopy];
}

- (void)decrementReferenceForObject:(id)object invalidationHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  handlerCopy = handler;
  v9 = [(NSCountedSet *)self->_objectReferences countForObject:objectCopy];
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication_BackgroundTasks.m" lineNumber:52 description:{@"Object passed to %s is not in reference map: object %@", "-[_UIObjectReferenceCounter decrementReferenceForObject:invalidationHandler:]", objectCopy}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E218);
  if (*CategoryCachedImpl)
  {
    v15 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "[_UIObjectReferenceCounter decrementReferenceForObject:invalidationHandler:]";
      v20 = 2112;
      v21 = objectCopy;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%s: reference map for object %@: existing count is %ld", buf, 0x20u);
    }
  }

  [(NSCountedSet *)self->_objectReferences removeObject:objectCopy];
  v11 = v9 - 1;
  if (v11)
  {
    v13 = __UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E228);
    if (*v13)
    {
      v17 = *(v13 + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[_UIObjectReferenceCounter decrementReferenceForObject:invalidationHandler:]";
        v20 = 2048;
        v21 = v11;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "%s: Updating reference map with count %ld", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = __UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E220);
    if (*v12)
    {
      v16 = *(v12 + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v19 = "[_UIObjectReferenceCounter decrementReferenceForObject:invalidationHandler:]";
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "%s: Object is no longer being referenced, removing object from reference map and invalidating it", buf, 0xCu);
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

@end