@interface VisionCoreEspressoUtils
+ (BOOL)getInputImageTensorDescriptor:(id *)descriptor outputTensorDescriptors:(id *)descriptors forNetworkModelFileURL:(id)l inputBlobName:(id)name pixelFormatType:(unsigned int)type outputBlobNamesWithTypes:(id)types confidencesBlobNamesWithLabelsFiles:(id)files error:(id *)self0;
+ (id)E5RTBaseModelName:(id)name error:(id *)error;
+ (id)E5RTURLForModelBundle:(id)bundle modelFileIsBaseName:(BOOL)name error:(id *)error;
+ (id)E5RTURLForModelNamed:(id)named error:(id *)error;
+ (id)URLForModelNamed:(id)named error:(id *)error;
+ (id)URLForResourceFileNamed:(id)named error:(id *)error;
+ (id)tensorShapesForBlobNames:(id)names ofNetworkModelFileURL:(id)l error:(id *)error;
@end

@implementation VisionCoreEspressoUtils

+ (BOOL)getInputImageTensorDescriptor:(id *)descriptor outputTensorDescriptors:(id *)descriptors forNetworkModelFileURL:(id)l inputBlobName:(id)name pixelFormatType:(unsigned int)type outputBlobNamesWithTypes:(id)types confidencesBlobNamesWithLabelsFiles:(id)files error:(id *)self0
{
  v11 = *&type;
  v58 = *MEMORY[0x1E69E9840];
  lCopy = l;
  nameCopy = name;
  typesCopy = types;
  filesCopy = files;
  v43 = typesCopy;
  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  allKeys = [typesCopy allKeys];
  v48 = [v16 initWithArray:allKeys];

  if (nameCopy)
  {
    [v48 addObject:nameCopy];
  }

  if (filesCopy)
  {
    allKeys2 = [filesCopy allKeys];
    [v48 addObjectsFromArray:allKeys2];
  }

  v45 = [self tensorShapesForBlobNames:v48 ofNetworkModelFileURL:lCopy error:?];
  if (!v45)
  {
    goto LABEL_28;
  }

  if (!nameCopy)
  {
    *descriptor = 0;
    goto LABEL_10;
  }

  v19 = [v45 objectForKeyedSubscript:?];
  if (!v19)
  {
    if (error)
    {
      _noBlobInNetworkModelError(lCopy, nameCopy);
      *error = v36 = 0;
      goto LABEL_37;
    }

LABEL_28:
    v36 = 0;
    goto LABEL_37;
  }

  *descriptor = -[VisionCoreImageTensorDescriptor initWithName:pixelFormatType:pixelWidth:pixelHeight:]([VisionCoreImageTensorDescriptor alloc], "initWithName:pixelFormatType:pixelWidth:pixelHeight:", nameCopy, v11, [v19 width], objc_msgSend(v19, "height"));

LABEL_10:
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = typesCopy;
  v22 = v45;
  objc_opt_self();
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __83__VisionCoreEspressoUtils__addNewTensorDescriptorsTo_forBlobNamesWithTypes_shapes___block_invoke;
  v55[3] = &unk_1E86986B0;
  v23 = v22;
  v56 = v23;
  v41 = v20;
  v57 = v41;
  [v21 enumerateKeysAndObjectsUsingBlock:v55];

  if (!filesCopy)
  {
    goto LABEL_25;
  }

  v44 = v41;
  v24 = filesCopy;
  v46 = v23;
  v39 = lCopy;
  objc_opt_self();
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [v24 allKeys];
  v25 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (!v25)
  {
    goto LABEL_24;
  }

  v26 = *v52;
  while (2)
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v52 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v51 + 1) + 8 * i);
      v29 = [v46 objectForKeyedSubscript:v28];
      if (!v29)
      {
        if (error)
        {
          *error = _noBlobInNetworkModelError(v39, v28);
        }

        goto LABEL_35;
      }

      v30 = [v24 objectForKeyedSubscript:v28];
      v31 = objc_opt_self();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v30;
        goto LABEL_21;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"cannot resolve %@ into a file URL", v30];
          *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v37];
        }

LABEL_34:
LABEL_35:

        v36 = 0;
        v35 = v41;
        goto LABEL_36;
      }

      v32 = [v31 URLForResourceFileNamed:v30 error:error];
LABEL_21:
      v33 = v32;

      if (!v33)
      {
        goto LABEL_34;
      }

      v34 = [[VisionCoreLabeledConfidencesDescriptor alloc] initWithName:v28 dataType:65568 shape:v29 strides:0 labelsFileURL:v33];
      [v44 setObject:v34 forKeyedSubscript:v28];
    }

    v25 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v25)
    {
      continue;
    }

    break;
  }

LABEL_24:

LABEL_25:
  v35 = v41;
  *descriptors = v35;
  v36 = 1;
LABEL_36:

LABEL_37:
  return v36;
}

void __83__VisionCoreEspressoUtils__addNewTensorDescriptorsTo_forBlobNamesWithTypes_shapes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v12];
  v7 = [v5 asVisionCoreTensorDataType];
  if ((v7 - 983048) <= 0x18 && ((1 << (v7 - 8)) & 0x1000101) != 0)
  {
    v8 = [VisionCoreImageTensorDescriptor alloc];
    switch(v7)
    {
      case 983048:
        v9 = 8;
        break;
      case 983072:
        v9 = 1278226534;
        break;
      case 983056:
        v9 = 1278226536;
        break;
      default:
        v9 = 0;
        break;
    }

    v10 = -[VisionCoreImageTensorDescriptor initWithName:pixelFormatType:pixelWidth:pixelHeight:](v8, "initWithName:pixelFormatType:pixelWidth:pixelHeight:", v12, v9, [v6 width], objc_msgSend(v6, "height"));
  }

  else
  {
    v10 = [[VisionCoreTensorDescriptor alloc] initWithName:v12 dataType:v7 shape:v6 strides:0];
  }

  v11 = v10;
  if (v10)
  {
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v12];
  }
}

+ (id)tensorShapesForBlobNames:(id)names ofNetworkModelFileURL:(id)l error:(id *)error
{
  v51[19] = *MEMORY[0x1E69E9840];
  namesCopy = names;
  lCopy = l;
  v8 = [lCopy VisionCoreFileSystemPathAndReturnError:error];
  if (!v8)
  {
    error = 0;
    goto LABEL_45;
  }

  v9 = [namesCopy count];
  v39 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:40 * v9];
  mutableBytes = [v39 mutableBytes];
  v11 = mutableBytes;
  if (v9)
  {
    v12 = 0;
    v13 = mutableBytes;
    do
    {
      v14 = [namesCopy objectAtIndexedSubscript:v12];
      *v13 = [v14 UTF8String];
      v13 += 5;

      ++v12;
    }

    while (v9 != v12);
  }

  std::string::basic_string[abi:ne200100]<0>(&v47, [v8 UTF8String]);
  size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  v16 = v47.__r_.__value_.__r.__words[0];
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v47.__r_.__value_.__l.__size_;
  }

  else
  {
    v16 = &v47;
  }

  if (!size)
  {
    v23 = 0;
    v24 = 4294967290;
    goto LABEL_26;
  }

  v17 = (v16 + size);
  v18 = v16;
  v19 = v17;
  do
  {
    if (v18->__r_.__value_.__s.__data_[0] == 46)
    {
      v20 = 1u;
      while (v20 != 13)
      {
        if ((v18 + v20) == v17)
        {
          goto LABEL_19;
        }

        v21 = v18->__r_.__value_.__s.__data_[v20];
        v22 = aEspressoNet[v20++];
        if (v21 != v22)
        {
          goto LABEL_11;
        }
      }

      v19 = v18;
    }

LABEL_11:
    v18 = (v18 + 1);
  }

  while (v18 != v17);
LABEL_19:
  v23 = 0;
  v24 = 4294967290;
  if (v19 == v17 || (v25 = v19 - v16, v25 == -1))
  {
LABEL_26:
    if ((*(&v47.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_41;
    }

LABEL_27:
    if ((v23 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_28:
    error = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v27 = *v11;
        v28 = *(v11 + 16);
        v50 = *(v11 + 32);
        v48 = v27;
        v49 = v28;
        v29 = [VisionCoreEspressoTensorShape shapeForBlobDimensions:&v48];
        v30 = [namesCopy objectAtIndexedSubscript:i];
        [error setObject:v29 forKey:v30];

        v11 += 40;
      }
    }

    goto LABEL_44;
  }

  std::string::replace(&v47, v25 + 10, 0xFFFFFFFFFFFFFFFFLL, "shape", 5uLL);
  std::ifstream::basic_ifstream(&v48);
  std::string::basic_string[abi:ne200100]<0>(__p, "json");
  Espresso::load_network_shape();
  if (v42 < 0)
  {
    operator delete(__p[0]);
    if (!v9)
    {
      goto LABEL_40;
    }
  }

  else if (!v9)
  {
    goto LABEL_40;
  }

  v31 = v11;
  v32 = v9;
  do
  {
    *(v31 + 24) = 0u;
    *(v31 + 8) = 0u;
    std::string::basic_string[abi:ne200100]<0>(__p, *v31);
    v33 = std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::find<std::string>(v43, __p);
    if (&v44 != v33 || (v33 = std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::find<std::string>(&v45, __p), &v46 != v33))
    {
      v34 = *(v33 + 56);
      *&v35 = v34;
      *(&v35 + 1) = SHIDWORD(v34);
      *(v31 + 8) = v35;
      v36 = *(v33 + 64);
      *&v35 = v36;
      *(&v35 + 1) = SHIDWORD(v36);
      *(v31 + 24) = v35;
    }

    if (v42 < 0)
    {
      operator delete(__p[0]);
    }

    v31 += 40;
    --v32;
  }

  while (v32);
LABEL_40:
  std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::destroy(v46);
  std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::destroy(v44);
  *&v48 = *MEMORY[0x1E69E54C8];
  *(&v48 + *(v48 - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1E12C7F40](&v49);
  std::istream::~istream();
  MEMORY[0x1E12C7FA0](v51);
  v24 = 0;
  v23 = 1;
  if ((*(&v47.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_27;
  }

LABEL_41:
  operator delete(v47.__r_.__value_.__l.__data_);
  if (v23)
  {
    goto LABEL_28;
  }

LABEL_42:
  if (error)
  {
    v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to introspect %@", v8];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForEspressoReturnStatus:v24 localizedDescription:v37];

    error = 0;
  }

LABEL_44:

LABEL_45:

  return error;
}

+ (id)E5RTURLForModelNamed:(id)named error:(id *)error
{
  namedCopy = named;
  v6 = VisionCoreFrameworkBundle();
  if (v6)
  {
    if ([namedCopy hasSuffix:@".mil"])
    {
      v7 = @"mil";
      goto LABEL_8;
    }

    if ([namedCopy hasSuffix:@".net"])
    {
      v7 = @"net";
LABEL_8:
      stringByDeletingPathExtension = [namedCopy stringByDeletingPathExtension];

      v10 = [v6 URLForResource:stringByDeletingPathExtension withExtension:v7];
      if (v10)
      {
        namedCopy = v10;
        namedCopy = stringByDeletingPathExtension;
        v8 = namedCopy;
      }

      else
      {
        if (error)
        {
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not locate model named %@", stringByDeletingPathExtension];
          *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v12];
        }

        namedCopy = 0;
        v8 = 0;
        namedCopy = stringByDeletingPathExtension;
      }

      goto LABEL_15;
    }

    if (error)
    {
      namedCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown model extension: %@", namedCopy];
      [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:namedCopy];
      *error = v8 = 0;
LABEL_15:

      goto LABEL_17;
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:@"could not locate VisionCore.framework"];
    *error = v8 = 0;
    goto LABEL_17;
  }

  v8 = 0;
LABEL_17:

  return v8;
}

+ (id)E5RTURLForModelBundle:(id)bundle modelFileIsBaseName:(BOOL)name error:(id *)error
{
  nameCopy = name;
  bundleCopy = bundle;
  v9 = bundleCopy;
  if (nameCopy)
  {
    v10 = bundleCopy;
  }

  else
  {
    v10 = [self E5RTBaseModelName:bundleCopy error:error];
  }

  v11 = v10;
  if (v10)
  {
    v12 = [v10 stringByAppendingString:@".bundle"];
    v13 = [self URLForResourceFileNamed:v12 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)E5RTBaseModelName:(id)name error:(id *)error
{
  nameCopy = name;
  lastPathComponent = [nameCopy lastPathComponent];
  if (([lastPathComponent hasSuffix:@".mil"] & 1) != 0 || objc_msgSend(lastPathComponent, "hasSuffix:", @".bundle"))
  {
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
LABEL_4:
    v10StringByDeletingPathExtension = stringByDeletingPathExtension;
    goto LABEL_5;
  }

  if (![lastPathComponent hasSuffix:@".espresso.net"])
  {
    if (error)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown format for model: %@", lastPathComponent];
      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v11];
    }

    stringByDeletingPathExtension = nameCopy;
    goto LABEL_4;
  }

  stringByDeletingPathExtension2 = [lastPathComponent stringByDeletingPathExtension];
  v10StringByDeletingPathExtension = [stringByDeletingPathExtension2 stringByDeletingPathExtension];

LABEL_5:

  return v10StringByDeletingPathExtension;
}

+ (id)URLForModelNamed:(id)named error:(id *)error
{
  namedCopy = named;
  v6 = VisionCoreFrameworkBundle();
  if (v6)
  {
    if ([namedCopy hasSuffix:@".espresso.net"])
    {
      stringByDeletingPathExtension = [namedCopy stringByDeletingPathExtension];

      namedCopy = stringByDeletingPathExtension;
    }

    v8 = [v6 URLForResource:namedCopy withExtension:@"net"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else if (error)
    {
      namedCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not locate model named %@", namedCopy];
      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:namedCopy];
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:@"could not locate VisionCore.framework"];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)URLForResourceFileNamed:(id)named error:(id *)error
{
  namedCopy = named;
  if ([namedCopy isAbsolutePath])
  {
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:namedCopy];
  }

  else
  {
    v7 = VisionCoreFrameworkBundle();
    v8 = v7;
    if (v7)
    {
      v9 = [v7 URLForResource:namedCopy withExtension:0];
      v6 = v9;
      if (v9)
      {
        v10 = v9;
      }

      else if (error)
      {
        namedCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not locate resource named %@", namedCopy];
        *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:namedCopy];
      }
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:@"could not locate VisionCore.framework"];
      *error = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end