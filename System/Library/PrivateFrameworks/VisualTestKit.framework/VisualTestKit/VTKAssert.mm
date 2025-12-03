@interface VTKAssert
- (NSArray)drawItems;
- (NSString)referenceImagesDirectory;
- (VTKAssert)initWithTestCase:(id)case;
- (VTKAssert)initWithTestCase:(id)case configuration:(id)configuration;
- (XCTestCase)testCase;
- (void)assertView:(id)view identifier:(id)identifier filePath:(id)path lineNumber:(unint64_t)number;
@end

@implementation VTKAssert

- (VTKAssert)initWithTestCase:(id)case
{
  caseCopy = case;
  v5 = objc_opt_new();
  v6 = [(VTKAssert *)self initWithTestCase:caseCopy configuration:v5];

  return v6;
}

- (VTKAssert)initWithTestCase:(id)case configuration:(id)configuration
{
  caseCopy = case;
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = VTKAssert;
  v8 = [(VTKAssert *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_testCase, caseCopy);
    v10 = [configurationCopy copy];
    configuration = v9->_configuration;
    v9->_configuration = v10;
  }

  return v9;
}

- (NSString)referenceImagesDirectory
{
  configuration = [(VTKAssert *)self configuration];
  referenceImagesDirectory = [configuration referenceImagesDirectory];

  return referenceImagesDirectory;
}

- (NSArray)drawItems
{
  configuration = [(VTKAssert *)self configuration];
  drawItems = [configuration drawItems];

  return drawItems;
}

- (void)assertView:(id)view identifier:(id)identifier filePath:(id)path lineNumber:(unint64_t)number
{
  viewCopy = view;
  identifierCopy = identifier;
  pathCopy = path;
  v63 = viewCopy;
  vtk_Snapshot = [viewCopy vtk_Snapshot];
  v12 = objc_opt_new();
  if (_VTKIsRecordModeEnabled())
  {
    goto LABEL_2;
  }

  configuration = [(VTKAssert *)self configuration];
  referenceItemsSource = [configuration referenceItemsSource];
  testCase = [(VTKAssert *)self testCase];
  v64 = 0;
  v18 = [referenceItemsSource referenceImageWithID:identifierCopy testCase:testCase error:&v64];
  v19 = v64;

  if (!v18)
  {
    localizedDescription = [v19 localizedDescription];
    if (localizedDescription || ([NSString stringWithFormat:@"missing reference image with name:%@.PNG.", identifierCopy], (localizedDescription = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = localizedDescription;
LABEL_13:

      goto LABEL_14;
    }
  }

  v20 = VTKPixelSizeOfImage(v18);
  v22 = v21;
  v24 = VTKPixelSizeOfImage(vtk_Snapshot);
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
    [vtk_Snapshot scale];
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

  configuration2 = [(VTKAssert *)self configuration];
  exclusionAreas = [configuration2 exclusionAreas];

  v60 = exclusionAreas;
  if ([exclusionAreas count])
  {
    v50 = VTKImageWithDrawItems(vtk_Snapshot, exclusionAreas);

    v51 = VTKImageWithDrawItems(v18, exclusionAreas);

    v18 = v51;
    vtk_Snapshot = v50;
  }

  configuration3 = [(VTKAssert *)self configuration];
  imageComparator = [configuration3 imageComparator];
  v54 = [imageComparator compareImage:vtk_Snapshot withImage:v18];

  isSuccesfull = [v54 isSuccesfull];
  if (isSuccesfull)
  {
    v14 = 0;
  }

  else
  {
    [v54 comparisonImage];
    v56 = v59 = isSuccesfull;
    v57 = [VTKStoreManagerImageItem itemWithImage:v18 itemType:0];
    [v12 addObject:v57];

    v58 = [VTKStoreManagerImageItem itemWithImage:v56 itemType:2];
    [v12 addObject:v58];

    isSuccesfull = v59;
    v14 = @"Given view is not similar to the reference image.";
  }

  if (isSuccesfull)
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

  v34 = [VTKStoreManagerImageItem itemWithImage:vtk_Snapshot itemType:1];
  [v12 addObject:v34];

  configuration4 = [(VTKAssert *)self configuration];
  drawItems = [configuration4 drawItems];
  v37 = VTKImageWithDrawItems(vtk_Snapshot, drawItems);

  if (v37)
  {
    v38 = [VTKStoreManagerImageItem itemWithImage:v37 itemType:3];
    [v12 addObject:v38];
  }

LABEL_18:
  configuration5 = [(VTKAssert *)self configuration];
  storeManager = [configuration5 storeManager];
  testCase2 = [(VTKAssert *)self testCase];
  v42 = [storeManager saveItems:v12 withID:identifierCopy testCase:testCase2];

  if ((v13 & 1) == 0)
  {
    saveDescription = [v42 saveDescription];
    v44 = [saveDescription length];

    if (v44)
    {
      saveDescription2 = [v42 saveDescription];
      v46 = [NSString stringWithFormat:@"%@ %@", v14, saveDescription2];

      v14 = v46;
    }

    testCase3 = [(VTKAssert *)self testCase];
    [testCase3 recordFailureWithDescription:v14 inFile:pathCopy atLine:number expected:1];
  }
}

- (XCTestCase)testCase
{
  WeakRetained = objc_loadWeakRetained(&self->_testCase);

  return WeakRetained;
}

@end