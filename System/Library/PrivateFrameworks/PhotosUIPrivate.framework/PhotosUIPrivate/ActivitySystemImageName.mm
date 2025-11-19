@interface ActivitySystemImageName
@end

@implementation ActivitySystemImageName

void ___ActivitySystemImageName_block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6982C40] _typeOfCurrentDevice];
  v1 = MEMORY[0x1E69A8A40];
  v2 = [v0 identifier];
  v8 = 0;
  v3 = [v1 symbolForTypeIdentifier:v2 withResolutionStrategy:1 variantOptions:1 error:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v10 = v0;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Error trying to retrieve symbol from device type (type: %{public}@): Error: %@", buf, 0x16u);
    }
  }

  v6 = [v3 name];
  v7 = _ActivitySystemImageName_imageName;
  _ActivitySystemImageName_imageName = v6;
}

@end