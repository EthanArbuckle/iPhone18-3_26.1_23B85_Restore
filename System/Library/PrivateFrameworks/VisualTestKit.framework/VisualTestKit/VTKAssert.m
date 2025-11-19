@interface VTKAssert
- (NSArray)drawItems;
- (NSString)referenceImagesDirectory;
- (VTKAssert)initWithTestCase:(id)a3;
- (VTKAssert)initWithTestCase:(id)a3 configuration:(id)a4;
- (XCTestCase)testCase;
- (void)assertView:(id)a3 identifier:(id)a4 filePath:(id)a5 lineNumber:(unint64_t)a6;
@end

@implementation VTKAssert

- (VTKAssert)initWithTestCase:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(VTKAssert *)self initWithTestCase:v4 configuration:v5];

  return v6;
}

- (VTKAssert)initWithTestCase:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = VTKAssert;
  v8 = [(VTKAssert *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_testCase, v6);
    v10 = [v7 copy];
    configuration = v9->_configuration;
    v9->_configuration = v10;
  }

  return v9;
}

- (NSString)referenceImagesDirectory
{
  v2 = [(VTKAssert *)self configuration];
  v3 = [v2 referenceImagesDirectory];

  return v3;
}

- (NSArray)drawItems
{
  v2 = [(VTKAssert *)self configuration];
  v3 = [v2 drawItems];

  return v3;
}

- (void)assertView:(id)a3 identifier:(id)a4 filePath:(id)a5 lineNumber:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v62 = a5;
  v63 = v9;
  v11 = [v9 vtk_Snapshot];
  v12 = objc_opt_new();
  if (_VTKIsRecordModeEnabled())
  {
    goto LABEL_2;
  }

  v15 = [(VTKAssert *)self configuration];
  v16 = [v15 referenceItemsSource];
  v17 = [(VTKAssert *)self testCase];
  v64 = 0;
  v18 = [v16 referenceImageWithID:v10 testCase:v17 error:&v64];
  v19 = v64;

  if (!v18)
  {
    v32 = [v19 localizedDescription];
    if (v32 || ([NSString stringWithFormat:@"missing reference image with name:%@.PNG.", v10], (v32 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v32;
LABEL_13:

      goto LABEL_14;
    }
  }

  v20 = VTKPixelSizeOfImage(v18);
  v22 = v21;
  v24 = VTKPixelSizeOfImage(v11);
  v25 = v23;
  if (v20 != v24 || v22 != v23)
  {
    v65.width = v20;
    v65.height = v22;
    v26 = NSStringFromCGSize(v65);
    [v18 scale];
    v28 = v27;
    v66.width = v24;
    v66.height = v25;
    v29 = NSStringFromCGSize(v66);
    [v11 scale];
    v14 = [NSString stringWithFormat:@"sizes doesn't match. reference size:%@ (scale:%f), test size:%@ (scale:%f).", v26, v28, v29, v30];

    v31 = [VTKStoreManagerImageItem itemWithImage:v18 itemType:0];
    [v12 addObject:v31];

    if (v14)
    {
      goto LABEL_13;
    }
  }

  if (_VTKIsRecordModeEnabled())
  {

    goto LABEL_2;
  }

  v48 = [(VTKAssert *)self configuration];
  v49 = [v48 exclusionAreas];

  v60 = v49;
  if ([v49 count])
  {
    v50 = VTKImageWithDrawItems(v11, v49);

    v51 = VTKImageWithDrawItems(v18, v49);

    v18 = v51;
    v11 = v50;
  }

  v52 = [(VTKAssert *)self configuration];
  v53 = [v52 imageComparator];
  v54 = [v53 compareImage:v11 withImage:v18];

  v55 = [v54 isSuccesfull];
  if (v55)
  {
    v14 = 0;
  }

  else
  {
    [v54 comparisonImage];
    v56 = v59 = v55;
    v57 = [VTKStoreManagerImageItem itemWithImage:v18 itemType:0];
    [v12 addObject:v57];

    v58 = [VTKStoreManagerImageItem itemWithImage:v56 itemType:2];
    [v12 addObject:v58];

    v55 = v59;
    v14 = @"Given view is not similar to the reference image.";
  }

  if (v55)
  {
LABEL_2:
    v13 = 1;
    v14 = 0;
    if (!_VTKIsRecordModeEnabled())
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_14:
  v13 = 0;
LABEL_15:
  v33 = [VTKStoreManagerItem itemWithView:v63];
  [v12 addObject:v33];

  v34 = [VTKStoreManagerImageItem itemWithImage:v11 itemType:1];
  [v12 addObject:v34];

  v35 = [(VTKAssert *)self configuration];
  v36 = [v35 drawItems];
  v37 = VTKImageWithDrawItems(v11, v36);

  if (v37)
  {
    v38 = [VTKStoreManagerImageItem itemWithImage:v37 itemType:3];
    [v12 addObject:v38];
  }

LABEL_18:
  v39 = [(VTKAssert *)self configuration];
  v40 = [v39 storeManager];
  v41 = [(VTKAssert *)self testCase];
  v42 = [v40 saveItems:v12 withID:v10 testCase:v41];

  if ((v13 & 1) == 0)
  {
    v43 = [v42 saveDescription];
    v44 = [v43 length];

    if (v44)
    {
      v45 = [v42 saveDescription];
      v46 = [NSString stringWithFormat:@"%@ %@", v14, v45];

      v14 = v46;
    }

    v47 = [(VTKAssert *)self testCase];
    [v47 recordFailureWithDescription:v14 inFile:v62 atLine:a6 expected:1];
  }
}

- (XCTestCase)testCase
{
  WeakRetained = objc_loadWeakRetained(&self->_testCase);

  return WeakRetained;
}

@end