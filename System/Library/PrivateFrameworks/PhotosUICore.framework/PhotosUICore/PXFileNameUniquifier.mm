@interface PXFileNameUniquifier
- (BOOL)_fileExistsAtPath:(id)a3;
- (PXFileNameUniquifier)initWithExistingFileSources:(id)a3;
- (id)_uniqueFileSystemName:(id)a3 inDirectory:(id)a4 rememberResult:(BOOL)a5;
- (id)ensureUniqueFileURL:(id)a3;
- (id)ensureUniquePath:(id)a3;
- (id)ensureUniquePath:(id)a3 alternateExtensions:(id)a4;
- (id)ensureUniquePath:(id)a3 andAlternateExtension:(id)a4;
- (id)uniqueFileSystemNameForPath:(id)a3 withAlternateExtension:(id)a4;
- (id)uniqueFileSystemNameForPath:(id)a3 withAlternateExtensions:(id)a4;
- (void)_rememberUniquifiedPath:(id)a3;
@end

@implementation PXFileNameUniquifier

- (void)_rememberUniquifiedPath:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(PXFileNameUniquifier *)self existingFileSources];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) rememberUniquifiedFilePath:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)_fileExistsAtPath:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(PXFileNameUniquifier *)self existingFileSources];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) fileExistsAtPath:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)ensureUniqueFileURL:(id)a3
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [a3 path];
  v6 = [(PXFileNameUniquifier *)self ensureUniquePath:v5];
  v7 = [v4 fileURLWithPath:v6];

  return v7;
}

- (id)ensureUniquePath:(id)a3 alternateExtensions:(id)a4
{
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = a3;
  v9 = [v8 stringByExpandingTildeInPath];
  v10 = [v9 stringByDeletingLastPathComponent];

  v11 = [(PXFileNameUniquifier *)self uniqueFileSystemNameForPath:v8 withAlternateExtensions:v6];

  v12 = [v10 stringByAppendingPathComponent:v11];

  objc_autoreleasePoolPop(v7);

  return v12;
}

- (id)ensureUniquePath:(id)a3 andAlternateExtension:(id)a4
{
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = a3;
  v9 = [v8 stringByExpandingTildeInPath];
  v10 = [v9 stringByDeletingLastPathComponent];

  v11 = [(PXFileNameUniquifier *)self uniqueFileSystemNameForPath:v8 withAlternateExtension:v6];

  v12 = [v10 stringByAppendingPathComponent:v11];

  objc_autoreleasePoolPop(v7);

  return v12;
}

- (id)ensureUniquePath:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByExpandingTildeInPath];
  v6 = [(PXFileNameUniquifier *)self _fileExistsAtPath:v5];

  v7 = v4;
  if (v6)
  {
    v8 = [v4 stringByExpandingTildeInPath];
    v9 = [v8 stringByDeletingLastPathComponent];

    v10 = [v4 lastPathComponent];
    v11 = [(PXFileNameUniquifier *)self _uniqueFileSystemName:v10 inDirectory:v9 rememberResult:0];

    v7 = [v9 stringByAppendingPathComponent:v11];
  }

  [(PXFileNameUniquifier *)self _rememberUniquifiedPath:v7];

  return v7;
}

- (id)uniqueFileSystemNameForPath:(id)a3 withAlternateExtensions:(id)a4
{
  v94 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v58 = [v6 lastPathComponent];
  v8 = [v58 stringByDeletingPathExtension];
  v9 = [v6 pathExtension];
  v61 = v6;
  v10 = [v6 stringByDeletingLastPathComponent];
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v86;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v86 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [*(*(&v85 + 1) + 8 * i) lowercaseString];
        [v11 addObject:v16];
      }

      v13 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v13);
  }

  v17 = [v9 lowercaseString];
  v18 = [v11 containsObject:v17];

  if ((v18 & 1) == 0)
  {
    v19 = [v9 lowercaseString];
    [v11 addObject:v19];
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v21 = v11;
  v22 = v20;
  v23 = v21;
  v24 = [v21 countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v82;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v82 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [v8 stringByAppendingPathExtension:*(*(&v81 + 1) + 8 * j)];
        [v22 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v81 objects:v92 count:16];
    }

    while (v25);
  }

  v62 = v9;
  v59 = v8;
  v65 = v23;

  v29 = 0;
  for (k = v22; ; v22 = k)
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v30 = v22;
    v31 = [v30 countByEnumeratingWithState:&v77 objects:v91 count:16];
    if (v31)
    {
      break;
    }

    v33 = 0;
LABEL_29:

    v67 = [(PXFileNameUniquifier *)self _uniqueFileSystemName:v33 inDirectory:v10 rememberResult:0];
    v39 = [v67 stringByDeletingPathExtension];

    [v30 removeAllObjects];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v40 = v65;
    v41 = [v40 countByEnumeratingWithState:&v73 objects:v90 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v74;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v74 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [v39 stringByAppendingPathExtension:*(*(&v73 + 1) + 8 * m)];
          [v30 addObject:v45];
        }

        v42 = [v40 countByEnumeratingWithState:&v73 objects:v90 count:16];
      }

      while (v42);
    }

    v29 = v39;
  }

  v32 = v31;
  v66 = v29;
  v33 = 0;
  v34 = *v78;
  do
  {
    v35 = 0;
    v36 = v33;
    do
    {
      if (*v78 != v34)
      {
        objc_enumerationMutation(v30);
      }

      v33 = *(*(&v77 + 1) + 8 * v35);

      v37 = [v10 stringByAppendingPathComponent:v33];
      v38 = [(PXFileNameUniquifier *)self _fileExistsAtPath:v37];

      if (v38)
      {
        v29 = v66;
        goto LABEL_29;
      }

      ++v35;
      v36 = v33;
    }

    while (v32 != v35);
    v32 = [v30 countByEnumeratingWithState:&v77 objects:v91 count:16];
  }

  while (v32);

  v46 = [v30 anyObject];
  v47 = [v46 stringByDeletingPathExtension];
  v48 = [v47 stringByAppendingPathExtension:v62];

  v64 = v48;
  v49 = [v48 stringByDeletingPathExtension];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v50 = v65;
  v51 = [v50 countByEnumeratingWithState:&v69 objects:v89 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v70;
    do
    {
      for (n = 0; n != v52; ++n)
      {
        if (*v70 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = [v49 stringByAppendingPathExtension:*(*(&v69 + 1) + 8 * n)];
        v56 = [v10 stringByAppendingPathComponent:v55];

        [(PXFileNameUniquifier *)self _rememberUniquifiedPath:v56];
      }

      v52 = [v50 countByEnumeratingWithState:&v69 objects:v89 count:16];
    }

    while (v52);
  }

  objc_autoreleasePoolPop(context);

  return v64;
}

- (id)uniqueFileSystemNameForPath:(id)a3 withAlternateExtension:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v8 = [v6 setWithObject:a4];
  v9 = [(PXFileNameUniquifier *)self uniqueFileSystemNameForPath:v7 withAlternateExtensions:v8];

  return v9;
}

- (id)_uniqueFileSystemName:(id)a3 inDirectory:(id)a4 rememberResult:(BOOL)a5
{
  v5 = a5;
  v65 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || !v9)
  {
    goto LABEL_25;
  }

  v11 = objc_autoreleasePoolPush();
  v55 = [v8 pathExtension];
  v12 = [v55 length];
  v13 = v8;
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:@"1"];
  v15 = [v10 stringByAppendingPathComponent:v13];
  if (v12)
  {
    v16 = [v13 stringByDeletingPathExtension];
LABEL_5:
    v54 = v16;

    goto LABEL_6;
  }

  v54 = v13;
  if ([v13 length])
  {
    v54 = v13;
    if ([v13 characterAtIndex:{objc_msgSend(v13, "length") - 1}] == 46)
    {
      v16 = [v13 substringToIndex:{objc_msgSend(v13, "length") - 1}];
      goto LABEL_5;
    }
  }

LABEL_6:
  v53 = v13;
  v58 = self;
  context = v11;
  v51 = v5;
  if ([(PXFileNameUniquifier *)self _fileExistsAtPath:v15])
  {
    v17 = [v54 length];
    v18 = objc_msgSend(@""), "characterAtIndex:", 0);
    v56 = v17;
    v19 = v17 - 1;
    if (v18 == [v54 characterAtIndex:v19])
    {
      v20 = objc_msgSend(v54, "rangeOfString:options:", @" ("), 4;
      v22 = v21;
      v23 = [v54 rangeOfString:@"" options:?], 4);
      if (v23 != 0x7FFFFFFFFFFFFFFFLL && v20 && v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v42 = v19;
        v43 = v20 + v22;
        v49 = v43;
        v50 = v23;
        if (v23 <= v43)
        {
          v44 = v43;
        }

        else
        {
          v44 = v23;
        }

        while (v44 != v43)
        {
          v45 = [v54 characterAtIndex:v43];
          v46 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
          LOBYTE(v45) = [v46 characterIsMember:v45];

          ++v43;
          if ((v45 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        if (v50 >= v49 && v44 == v42)
        {
          v47 = [v53 substringToIndex:v20];

          v54 = v47;
        }

        else
        {
          v48 = PLUIGetLog();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218496;
            v60 = v44;
            v61 = 2048;
            v62 = v56;
            v63 = 2048;
            v64 = v50;
            _os_log_impl(&dword_1A3C1C000, v48, OS_LOG_TYPE_ERROR, "File name uniquifier unexpected index for end of string: %lu, length: %lu; right index: %lu", buf, 0x20u);
          }
        }

LABEL_42:
        self = v58;
      }
    }
  }

  v24 = [MEMORY[0x1E696AD60] stringWithFormat:@" (%lu)", 1];
  v25 = [(PXFileNameUniquifier *)self _fileExistsAtPath:v15];
  v57 = v10;
  if (v12)
  {
    if (v25)
    {
      v26 = 1;
      do
      {
        v27 = [v54 stringByAppendingString:v24];
        v28 = [v27 stringByAppendingPathExtension:v55];

        v29 = [v10 stringByAppendingPathComponent:v28];

        v30 = [v24 rangeOfString:v14];
        v32 = v31;
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", v26];

        v34 = v32;
        self = v58;
        [v24 replaceCharactersInRange:v30 withString:{v34, v33}];

        v14 = v33;
        ++v26;
        v10 = v57;
        v15 = v29;
      }

      while ([(PXFileNameUniquifier *)v58 _fileExistsAtPath:v29]);
      goto LABEL_22;
    }
  }

  else if (v25)
  {
    v35 = 1;
    do
    {
      v36 = [v54 stringByAppendingString:v24];
      v29 = [v10 stringByAppendingPathComponent:v36];

      v37 = [v24 rangeOfString:v14];
      v39 = v38;
      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", v35];

      v40 = v37;
      self = v58;
      [v24 replaceCharactersInRange:v40 withString:{v39, v33}];

      v14 = v33;
      ++v35;
      v10 = v57;
      v15 = v29;
    }

    while ([(PXFileNameUniquifier *)v58 _fileExistsAtPath:v29]);
    goto LABEL_22;
  }

  v33 = v14;
  v29 = v15;
LABEL_22:

  if (v51)
  {
    [(PXFileNameUniquifier *)self _rememberUniquifiedPath:v29];
  }

  v8 = [v29 lastPathComponent];

  objc_autoreleasePoolPop(context);
LABEL_25:

  return v8;
}

- (PXFileNameUniquifier)initWithExistingFileSources:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXFileNameUniquifier.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"sources.count"}];
  }

  v11.receiver = self;
  v11.super_class = PXFileNameUniquifier;
  v6 = [(PXFileNameUniquifier *)&v11 init];
  if (v6)
  {
    v7 = [v5 copy];
    existingFileSources = v6->_existingFileSources;
    v6->_existingFileSources = v7;
  }

  return v6;
}

@end