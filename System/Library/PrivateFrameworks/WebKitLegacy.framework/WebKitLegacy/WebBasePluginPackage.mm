@interface WebBasePluginPackage
+ (id)pluginWithPath:(id)path;
- (BOOL)getPluginInfoFromPLists;
- (BOOL)isJavaPlugIn;
- (BOOL)isNativeLibraryData:(id)data;
- (BOOL)isQuickTimePlugIn;
- (BOOL)load;
- (BOOL)supportsExtension:(const void *)extension;
- (BOOL)supportsMIMEType:(const void *)type;
- (String)bundleIdentifier;
- (String)bundleVersion;
- (WebBasePluginPackage)initWithPath:(id)path;
- (id).cxx_construct;
- (id)MIMETypeForExtension:(const void *)extension;
- (id)_objectForInfoDictionaryKey:(id)key;
- (id)pListForPath:(id)path createFile:(BOOL)file;
- (void)createPropertyListFile;
- (void)dealloc;
- (void)wasAddedToPluginDatabase:(id)database;
@end

@implementation WebBasePluginPackage

+ (id)pluginWithPath:(id)path
{
  result = [[WebPluginPackage alloc] initWithPath:path];
  if (result)
  {
    v4 = result;
    v5 = result;
    return v4;
  }

  return result;
}

- (WebBasePluginPackage)initWithPath:(id)path
{
  v18.receiver = self;
  v18.super_class = WebBasePluginPackage;
  v4 = [(WebBasePluginPackage *)&v18 init];
  if (!v4)
  {
    return v4;
  }

  MEMORY[0x1CCA63A40](&v17, [path stringByResolvingSymlinksInPath]);
  v6 = v17;
  v17 = 0;
  m_ptr = v4->path.m_impl.m_ptr;
  v4->path.m_impl.m_ptr = v6;
  if (m_ptr)
  {
    if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v5);
    }

    v8 = v17;
    v17 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }

    v6 = v4->path.m_impl.m_ptr;
  }

  v9 = MEMORY[0x1E695DFF8];
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v17, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v10);
    }
  }

  else
  {
    v17 = &stru_1F472E7E8;
    v16 = &stru_1F472E7E8;
  }

  v11 = [v9 fileURLWithPath:v17];
  v12 = CFBundleCreate(*MEMORY[0x1E695E480], v11);
  v13 = v4->cfBundle.m_ptr;
  v4->cfBundle.m_ptr = v12;
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = v17;
  v17 = 0;
  if (v14)
  {
  }

  if (v4->cfBundle.m_ptr)
  {
    return v4;
  }

  return 0;
}

- (void)createPropertyListFile
{
  if ([(WebBasePluginPackage *)self load])
  {
    BP_CreatePluginMIMETypesPreferences = self->BP_CreatePluginMIMETypesPreferences;
    if (BP_CreatePluginMIMETypesPreferences)
    {
      BP_CreatePluginMIMETypesPreferences();

      [(WebBasePluginPackage *)self unload];
    }
  }
}

- (id)pListForPath:(id)path createFile:(BOOL)file
{
  if (file)
  {
    pathCopy = path;
    [(WebBasePluginPackage *)self createPropertyListFile];
    path = pathCopy;
  }

  result = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:path];
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x1E696AE40];

    return [v7 propertyListWithData:v6 options:0 format:0 error:0];
  }

  return result;
}

- (id)_objectForInfoDictionaryKey:(id)key
{
  result = CFBundleGetInfoDictionary(self->cfBundle.m_ptr);
  if (result)
  {

    return CFDictionaryGetValue(result, key);
  }

  return result;
}

- (BOOL)getPluginInfoFromPLists
{
  v110 = *MEMORY[0x1E69E9840];
  if (self->cfBundle.m_ptr)
  {
    selfCopy = self;
    v3 = [(WebBasePluginPackage *)self _objectForInfoDictionaryKey:@"WebPluginMIMETypes"];
    if (v3)
    {
      v4 = v3;
      keyEnumerator = [v3 keyEnumerator];
      nextObject = [keyEnumerator nextObject];
      if (nextObject)
      {
        nextObject2 = nextObject;
        v87 = v4;
        v88 = selfCopy;
        v86 = keyEnumerator;
        while (1)
        {
          v8 = [v4 objectForKey:{nextObject2, v86, v87, v88}];
          v9 = [v8 objectForKey:@"WebPluginTypeEnabled"];
          if (!v9 || [v9 BOOLValue])
          {
            break;
          }

LABEL_94:
          nextObject2 = [keyEnumerator nextObject];
          if (!nextObject2)
          {
            goto LABEL_100;
          }
        }

        *v104 = 0u;
        *v105 = 0u;
        v10 = [objc_msgSend(v8 objectForKey:{@"WebPluginExtensions", "_web_lowercaseStrings"}];
        v89 = v8;
        v90 = nextObject2;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v100 objects:v109 count:16];
        if (v11)
        {
          obj = v10;
          v92 = *v101;
          do
          {
            v12 = 0;
            v93 = v11;
            do
            {
              if (*v101 != v92)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v100 + 1) + 8 * v12);
              v96 = 0u;
              v97 = 0u;
              v98 = 0u;
              v99 = 0u;
              v14 = [v13 componentsSeparatedByString:{@", "}];
              v15 = [v14 countByEnumeratingWithState:&v96 objects:v108 count:16];
              if (v15)
              {
                v16 = *v97;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v97 != v16)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v18 = *(*(&v96 + 1) + 8 * i);
                    v19 = HIDWORD(v105[1]);
                    if (HIDWORD(v105[1]) == LODWORD(v105[1]))
                    {
                      v20 = HIDWORD(v105[1]) + (HIDWORD(v105[1]) >> 1);
                      if (v20 <= HIDWORD(v105[1]) + 1)
                      {
                        v20 = HIDWORD(v105[1]) + 1;
                      }

                      if (v20 >> 29)
                      {
                        goto LABEL_133;
                      }

                      v21 = v105[0];
                      if (v20 <= 0x10)
                      {
                        v22 = 16;
                      }

                      else
                      {
                        v22 = v20;
                      }

                      v23 = WTF::fastMalloc((8 * v22));
                      LODWORD(v105[1]) = v22;
                      v105[0] = v23;
                      memcpy(v23, v21, 8 * v19);
                      if (v21)
                      {
                        if (v105[0] == v21)
                        {
                          v105[0] = 0;
                          LODWORD(v105[1]) = 0;
                        }

                        WTF::fastFree(v21, v24);
                      }

                      v25 = v105[0] + 8 * HIDWORD(v105[1]);
                    }

                    else
                    {
                      v25 = v105[0] + 8 * HIDWORD(v105[1]);
                    }

                    MEMORY[0x1CCA63A40](v25, v18);
                    ++HIDWORD(v105[1]);
                  }

                  v15 = [v14 countByEnumeratingWithState:&v96 objects:v108 count:16];
                }

                while (v15);
              }

              ++v12;
            }

            while (v12 != v93);
            v11 = [obj countByEnumeratingWithState:&v100 objects:v109 count:16];
          }

          while (v11);
        }

        MEMORY[0x1CCA63A40](&v94, v90);
        WTF::String::convertToASCIILowercase(&v95, &v94);
        v27 = v95;
        v95 = 0;
        v4 = v87;
        selfCopy = v88;
        keyEnumerator = v86;
        if (v27)
        {
          v106 = v27;
          if ((*(v27 + 16) & 0x10) == 0)
          {
            WTF::AtomStringImpl::addSlowCase();
            v28 = v106;
            v27 = v107;
            v106 = 0;
            v107 = 0;
            if (v28)
            {
              if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v28, v26);
              }
            }
          }
        }

        v29 = v104[0];
        v104[0] = v27;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v26);
        }

        v30 = v95;
        v95 = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v26);
        }

        v31 = v94;
        v94 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v26);
        }

        MEMORY[0x1CCA63A40](&v107, [v89 objectForKey:@"WebPluginTypeDescription"]);
        v33 = v107;
        v107 = 0;
        v34 = v104[1];
        v104[1] = v33;
        if (v34)
        {
          if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v32);
          }

          v35 = v107;
          v107 = 0;
          if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, v32);
          }
        }

        v36 = v88[15];
        if (v36 == v88[14])
        {
          v37 = WTF::Vector<WebCore::MimeClassInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v88 + 12, v36 + 1, v104);
          v38 = v37;
          v39 = v88[15];
          v40 = *(v88 + 6);
          v41 = *v37;
          if (*v37)
          {
            atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
          }

          v42 = v40 + 32 * v39;
          *v42 = v41;
          v43 = *(v37 + 8);
          if (v43)
          {
            atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
          }

          *(v42 + 8) = v43;
          v44 = *(v37 + 28);
          *(v42 + 16) = 0;
          *(v42 + 24) = 0;
          *(v42 + 28) = v44;
          if (v44)
          {
            if (v44 >> 29)
            {
              __break(0xC471u);
              JUMPOUT(0x1C7A5DFB0);
            }

            v45 = WTF::fastMalloc((8 * v44));
            *(v42 + 24) = v44;
            *(v42 + 16) = v45;
            v46 = *(v38 + 28);
            if (v46)
            {
              v47 = *(v38 + 16);
              v48 = 8 * v46;
              do
              {
                v49 = *v47;
                if (*v47)
                {
                  atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
                }

                *v45++ = v49;
                ++v47;
                v48 -= 8;
              }

              while (v48);
            }
          }
        }

        else
        {
          v50 = *(v88 + 6);
          v51 = v104[0];
          if (v104[0])
          {
            atomic_fetch_add_explicit(v104[0], 2u, memory_order_relaxed);
          }

          v52 = v50 + 32 * v36;
          *v52 = v51;
          v53 = v104[1];
          if (v104[1])
          {
            atomic_fetch_add_explicit(v104[1], 2u, memory_order_relaxed);
          }

          *(v52 + 8) = v53;
          v54 = HIDWORD(v105[1]);
          *(v52 + 16) = 0;
          *(v52 + 24) = 0;
          *(v52 + 28) = v54;
          if (v54)
          {
            if (v54 >> 29)
            {
LABEL_133:
              __break(0xC471u);
              JUMPOUT(0x1C7A5DFA8);
            }

            v55 = WTF::fastMalloc((8 * v54));
            *(v52 + 24) = v54;
            *(v52 + 16) = v55;
            v56 = v105[0];
            if (!HIDWORD(v105[1]))
            {
              ++v88[15];
              if (!v56)
              {
LABEL_88:
                v62 = v104[1];
                v104[1] = 0;
                if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v62, v32);
                }

                v63 = v104[0];
                v104[0] = 0;
                if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v63, v32);
                }

                goto LABEL_94;
              }

LABEL_87:
              v105[0] = 0;
              LODWORD(v105[1]) = 0;
              WTF::fastFree(v56, v32);
              goto LABEL_88;
            }

            v57 = 8 * HIDWORD(v105[1]);
            do
            {
              v58 = *v56;
              if (*v56)
              {
                atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
              }

              *v55++ = v58;
              v56 = (v56 + 8);
              v57 -= 8;
            }

            while (v57);
          }
        }

        v59 = HIDWORD(v105[1]);
        ++v88[15];
        v56 = v105[0];
        if (v59)
        {
          v60 = 8 * v59;
          do
          {
            v61 = *v56;
            *v56 = 0;
            if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v61, v32);
            }

            v56 = (v56 + 8);
            v60 -= 8;
          }

          while (v60);
          v56 = v105[0];
        }

        if (!v56)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      }

LABEL_100:
      m_ptr = selfCopy->path.m_impl.m_ptr;
      if (m_ptr)
      {
        atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](v104, m_ptr);
        if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(m_ptr, v65);
        }
      }

      else
      {
        v104[0] = &stru_1F472E7E8;
        v84 = &stru_1F472E7E8;
      }

      lastPathComponent = [(WTF::StringImpl *)v104[0] lastPathComponent];
      v67 = v104[0];
      v104[0] = 0;
      if (v67)
      {
      }

      MEMORY[0x1CCA63A40](v104, lastPathComponent);
      v69 = v104[0];
      v104[0] = 0;
      v70 = selfCopy->pluginInfo.file.m_impl.m_ptr;
      selfCopy->pluginInfo.file.m_impl.m_ptr = v69;
      if (v70)
      {
        if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v70, v68);
        }

        v71 = v104[0];
        v104[0] = 0;
        if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v71, v68);
        }
      }

      v72 = [(WebBasePluginPackage *)selfCopy _objectForInfoDictionaryKey:@"WebPluginName"];
      if (v72)
      {
        v73 = v72;
      }

      else
      {
        v73 = lastPathComponent;
      }

      MEMORY[0x1CCA63A40](v104, v73);
      v75 = v104[0];
      v104[0] = 0;
      v76 = selfCopy->pluginInfo.name.m_impl.m_ptr;
      selfCopy->pluginInfo.name.m_impl.m_ptr = v75;
      if (v76)
      {
        if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v76, v74);
        }

        v77 = v104[0];
        v104[0] = 0;
        if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v77, v74);
        }
      }

      v78 = [(WebBasePluginPackage *)selfCopy _objectForInfoDictionaryKey:@"WebPluginDescription"];
      if (v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = lastPathComponent;
      }

      MEMORY[0x1CCA63A40](v104, v79);
      v81 = v104[0];
      v104[0] = 0;
      v82 = selfCopy->pluginInfo.desc.m_impl.m_ptr;
      selfCopy->pluginInfo.desc.m_impl.m_ptr = v81;
      if (v82)
      {
        if (atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v82, v80);
        }

        v83 = v104[0];
        v104[0] = 0;
        if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v83, v80);
        }
      }

      selfCopy->pluginInfo.isApplicationPlugin = 0;
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)load
{
  m_ptr = self->cfBundle.m_ptr;
  if (!m_ptr || self->BP_CreatePluginMIMETypesPreferences)
  {
    return 1;
  }

  self->BP_CreatePluginMIMETypesPreferences = CFBundleGetFunctionPointerForName(m_ptr, @"BP_CreatePluginMIMETypesPreferences");
  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebBasePluginPackage;
  [(WebBasePluginPackage *)&v3 dealloc];
}

- (BOOL)supportsExtension:(const void *)extension
{
  m_size = self->pluginInfo.mimes.m_size;
  if (!m_size)
  {
    return 0;
  }

  m_buffer = self->pluginInfo.mimes.m_buffer;
  v6 = (m_buffer + 32 * m_size);
  while (!*(m_buffer + 7))
  {
LABEL_3:
    m_buffer = (m_buffer + 32);
    if (m_buffer == v6)
    {
      return 0;
    }
  }

  v7 = 0;
  while ((WTF::equal(*(*(m_buffer + 2) + 8 * v7), *extension, extension) & 1) == 0)
  {
    if (++v7 >= *(m_buffer + 7))
    {
      goto LABEL_3;
    }
  }

  return 1;
}

- (BOOL)supportsMIMEType:(const void *)type
{
  m_size = self->pluginInfo.mimes.m_size;
  if (!m_size)
  {
    return 0;
  }

  m_buffer = self->pluginInfo.mimes.m_buffer;
  v6 = 32 * m_size - 32;
  do
  {
    v7 = *m_buffer;
    m_buffer = (m_buffer + 32);
    result = WTF::equal(v7, *type, type);
    if (result)
    {
      break;
    }

    v9 = v6;
    v6 -= 32;
  }

  while (v9);
  return result;
}

- (id)MIMETypeForExtension:(const void *)extension
{
  m_size = self->pluginInfo.mimes.m_size;
  if (!m_size)
  {
    return 0;
  }

  m_buffer = self->pluginInfo.mimes.m_buffer;
  v6 = (m_buffer + 32 * m_size);
  while (!*(m_buffer + 7))
  {
LABEL_3:
    m_buffer = (m_buffer + 32);
    if (m_buffer == v6)
    {
      return 0;
    }
  }

  v7 = 0;
  while ((WTF::equal(*(*(m_buffer + 2) + 8 * v7), *extension, extension) & 1) == 0)
  {
    if (++v7 >= *(m_buffer + 7))
    {
      goto LABEL_3;
    }
  }

  v8 = *m_buffer;
  if (!*m_buffer)
  {
    v14 = &stru_1F472E7E8;
    result = &stru_1F472E7E8;
    v15 = 0;
LABEL_13:
    v11 = result;
    v12 = result;
    v13 = v15;
    v15 = 0;
    if (v13)
    {
    }

    return v11;
  }

  atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v15, v8);
  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v9);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    goto LABEL_13;
  }

  return result;
}

- (BOOL)isQuickTimePlugIn
{
  if (self)
  {
    [(WebBasePluginPackage *)self bundleIdentifier];
    self = v5;
  }

  else
  {
    v5 = 0;
  }

  result = MEMORY[0x1CCA639B0](self, "com.apple.quicktime.webplugin", 29);
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v4 = result;
      WTF::StringImpl::destroy(v5, v3);
      return v4;
    }
  }

  return result;
}

- (BOOL)isJavaPlugIn
{
  if (self)
  {
    [(WebBasePluginPackage *)self bundleIdentifier];
    self = v5;
  }

  else
  {
    v5 = 0;
  }

  if (MEMORY[0x1CCA639B0](self, "com.apple.JavaPluginCocoa", 25))
  {
    result = 1;
  }

  else
  {
    result = MEMORY[0x1CCA639B0](v5, "com.apple.JavaAppletPlugin", 26);
  }

  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v4 = result;
      WTF::StringImpl::destroy(v5, v2);
      return v4;
    }
  }

  return result;
}

- (BOOL)isNativeLibraryData:(id)data
{
  v4 = [data length];
  v5 = v4 + 3;
  v6 = (v4 + 3) >> 2;
  v44 = v47;
  v45 = 128;
  v46 = v6;
  if (v4 + 3 < 0x204)
  {
    v7 = v47;
    if (!data)
    {
LABEL_4:
      v8 = 0;
      bytes = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if (HIDWORD(v5))
    {
      __break(0xC471u);
      JUMPOUT(0x1C7A5E98CLL);
    }

    v7 = WTF::fastMalloc((v5 & 0xFFFFFFFC));
    v45 = v6;
    v44 = v7;
    LODWORD(v6) = v46;
    if (!data)
    {
      goto LABEL_4;
    }
  }

  bytes = [data bytes];
  v8 = [data length];
  if (4 * v6 < v8)
  {
    __break(0xC471u);
    goto LABEL_63;
  }

LABEL_7:
  memcpy(v7, bytes, v8);
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  if (v4 < 0x20)
  {
    goto LABEL_55;
  }

  v11 = v46;
  if (!v46)
  {
    __break(0xC471u);
    goto LABEL_62;
  }

  v12 = v44;
  v13 = *v44;
  if (*v44 == -17958194 || v13 == -822415874)
  {
    if (v46 > 6)
    {
      if (v13 == -822415874)
      {
        v15 = (v46 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        v16 = v44;
        if (v15 < 7)
        {
          goto LABEL_20;
        }

        v17 = v15 + 1;
        v16 = (v44 + 4 * (v17 & 0x7FFFFFFFFFFFFFF8));
        v18 = (v44 + 16);
        v19 = v17 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v20 = vrev32q_s8(*v18);
          v18[-1] = vrev32q_s8(v18[-1]);
          *v18 = v20;
          v18 += 2;
          v19 -= 8;
        }

        while (v19);
        if (v17 != (v17 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_20:
          v21 = (v12 + 4 * v11);
          do
          {
            *v16 = bswap32(*v16);
            ++v16;
          }

          while (v16 != v21);
        }
      }

      goto LABEL_37;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    JUMPOUT(0x1C7A5E984);
  }

  v22 = 0;
  if (v13 <= -805638659)
  {
    if (v13 == -1095041334)
    {
      v34 = (v46 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      v35 = v44;
      if (v34 < 7)
      {
        goto LABEL_46;
      }

      v36 = v34 + 1;
      v35 = (v44 + 4 * (v36 & 0x7FFFFFFFFFFFFFF8));
      v37 = (v44 + 16);
      v38 = v36 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v39 = vrev32q_s8(*v37);
        v37[-1] = vrev32q_s8(v37[-1]);
        *v37 = v39;
        v37 += 2;
        v38 -= 8;
      }

      while (v38);
      if (v36 != (v36 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_46:
        v40 = (v12 + 4 * v11);
        do
        {
          *v35 = bswap32(*v35);
          ++v35;
        }

        while (v35 != v40);
      }

      LODWORD(v11) = v46;
    }

    else if (v13 != -889275714)
    {
      goto LABEL_40;
    }

    if (v11 > 1)
    {
      if (*(v12 + 1) >= ((v4 - 8) / 0x14))
      {
        v31 = (v4 - 8) / 0x14;
      }

      else
      {
        v31 = *(v12 + 1);
      }

      if (!v31)
      {
        goto LABEL_55;
      }

      v30 = (v12 + 8);
LABEL_38:
      v32 = NXGetLocalArchInfo();
      if (v32)
      {
        v22 = NXFindBestFatArch(v32->cputype, v32->cpusubtype, v30, v31) != 0;
        goto LABEL_40;
      }

LABEL_55:
      v22 = 0;
      v33 = v44;
      if (v47 == v44)
      {
        return v22;
      }

      goto LABEL_56;
    }

    goto LABEL_62;
  }

  if (v13 == -17958193 || v13 == -805638658)
  {
    if (v46 > 7)
    {
      if (v13 == -805638658)
      {
        v23 = (v46 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        v24 = v44;
        if (v23 < 7)
        {
          goto LABEL_35;
        }

        v25 = v23 + 1;
        v24 = (v44 + 4 * (v25 & 0x7FFFFFFFFFFFFFF8));
        v26 = (v44 + 16);
        v27 = v25 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = vrev32q_s8(*v26);
          v26[-1] = vrev32q_s8(v26[-1]);
          *v26 = v28;
          v26 += 2;
          v27 -= 8;
        }

        while (v27);
        if (v25 != (v25 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_35:
          v29 = (v12 + 4 * v11);
          do
          {
            *v24 = bswap32(*v24);
            ++v24;
          }

          while (v24 != v29);
        }
      }

LABEL_37:
      v42[0] = *(v12 + 4);
      v30 = v42;
      v31 = 1;
      goto LABEL_38;
    }

    goto LABEL_62;
  }

LABEL_40:
  v33 = v44;
  if (v47 == v44)
  {
    return v22;
  }

LABEL_56:
  if (v33)
  {
    v44 = 0;
    v45 = 0;
    WTF::fastFree(v33, v10);
  }

  return v22;
}

- (void)wasAddedToPluginDatabase:(id)database
{
  pluginDatabases = self->pluginDatabases;
  if (pluginDatabases)
  {
  }

  else
  {
    databaseCopy = database;
    pluginDatabases = objc_alloc_init(MEMORY[0x1E695DFA8]);
    database = databaseCopy;
    self->pluginDatabases = pluginDatabases;
  }

  [(NSMutableSet *)pluginDatabases addObject:database];
}

- (String)bundleIdentifier
{
  CFBundleGetIdentifier(self->cfBundle.m_ptr);

  JUMPOUT(0x1CCA63A40);
}

- (String)bundleVersion
{
  v3 = v2;
  InfoDictionary = CFBundleGetInfoDictionary(self->cfBundle.m_ptr);
  if (InfoDictionary)
  {
    Value = CFDictionaryGetValue(InfoDictionary, *MEMORY[0x1E695E500]);
    if (Value)
    {
      CFGetTypeID(Value);
      CFStringGetTypeID();
    }

    JUMPOUT(0x1CCA63A40);
  }

  *v3 = 0;
  return InfoDictionary;
}

- (id).cxx_construct
{
  *(self + 64) = 0;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end