@interface WebScriptObject(WebScriptObjectInternal)
- (char)_init;
- (uint64_t)_initializeScriptDOMNodeImp;
@end

@implementation WebScriptObject(WebScriptObjectInternal)

- (char)_init
{
  v4.receiver = self;
  v4.super_class = WebScriptObject_0;
  v1 = objc_msgSendSuper2(&v4, sel_init);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(MEMORY[0x1E69E21C0]);
    *&v1[*MEMORY[0x1E69E21E0]] = v2;
    v2[*MEMORY[0x1E69E21E8]] = 1;
    return v1;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"+%@: _init is an internal initializer", objc_opt_class()}];
    return 0;
  }
}

- (uint64_t)_initializeScriptDOMNodeImp
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    if (self)
    {
      v3 = self[2];
      v4 = *(*(*(v3 + 48) + 8) + 552);
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      v3 = 0;
      v4 = *(*(MEMORY[0x30] + 8) + 552);
      if (!v4)
      {
        return result;
      }
    }

    v5 = *(v4 + 8);
    if (v5)
    {
      v6 = *(v5 + 232);
      v7 = WebCore::mainThreadNormalWorldSingleton(result);
      if (*(*(WebCore::ScriptController::jsWindowProxy(v6, v7) + 16) + 3448))
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          if ((*(v8 + 8) & 3) == 0)
          {
            OutOfLineCachedWrapper = *v8;
            if (*v8)
            {
              goto LABEL_16;
            }
          }
        }
      }

      else
      {
        OutOfLineCachedWrapper = WebCore::getOutOfLineCachedWrapper();
        if (OutOfLineCachedWrapper)
        {
          goto LABEL_16;
        }
      }

      *(v3 + 28) += 2;
      OutOfLineCachedWrapper = WebCore::createWrapper();
      v13 = 0;
      if (v3)
      {
        if (*(v3 + 28) == 2)
        {
          WebCore::Node::removedLastRef(v3);
        }

        else
        {
          *(v3 + 28) -= 2;
        }
      }

LABEL_16:
      v10 = WebCore::ScriptController::bindingRootObject(*(v5 + 232));
      if (v10)
      {
        *(v10 + 2) += 2;
      }

      v12 = v10;
      v13 = v10;
      [self _setImp:OutOfLineCachedWrapper originRootObject:&v13 rootObject:&v12];
      v11 = v12;
      v12 = 0;
      if (v11)
      {
        if (*(v11 + 2) == 1)
        {
          (*(*v11 + 8))(v11);
          result = v13;
          v13 = 0;
          if (!result)
          {
            return result;
          }

LABEL_24:
          if (*(result + 8) == 1)
          {
            return (*(*result + 8))(result);
          }

          --*(result + 8);
          return result;
        }

        --*(v11 + 2);
      }

      result = v13;
      v13 = 0;
      if (!result)
      {
        return result;
      }

      goto LABEL_24;
    }
  }

  return result;
}

@end