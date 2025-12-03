@interface VisionCoreSceneNetInferenceNetworkDescriptor
+ (BOOL)_getAnalyzerName:(id *)name ANESpecificAnalyzerName:(id *)analyzerName specifier:(id *)specifier forModel:(unint64_t)model objDetNet:(BOOL)net sliderNet:(BOOL)sliderNet error:(id *)error;
+ (id)descriptorForModel:(unint64_t)model requireObjDetNet:(BOOL)net requireSliderNet:(BOOL)sliderNet error:(id *)error;
+ (id)sceneNetObjDetNetSliderNetV3AndReturnError:(id *)error;
+ (id)sceneNetV3AndReturnError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)analyzerName;
- (NSURL)aestheticsLabelsFileURL;
- (NSURL)entityNetLabelsFileURL;
- (NSURL)entityNetOperatingPointsFileURL;
- (NSURL)fingerprintsHasherFileURL;
- (NSURL)objectDetectorLabelsFileURL;
- (NSURL)pca256FileURL;
- (NSURL)sceneLabelRelationshipsFileURL;
- (NSURL)sceneLabelsFileURL;
- (NSURL)sceneOperatingPointsFileURL;
- (VisionCoreSceneNetInferenceNetworkDescriptor)initWithCoder:(id)coder;
- (VisionCoreTensorDescriptor)sceneLabelConfidencesOutput;
- (VisionCoreTensorDescriptor)sceneprintOutput;
- (id)ANESpecificURL;
- (id)_newCustomClassifierDescriptorWithModelName:(id)name labelsFileName:(id)fileName inputBlobName:(id)blobName outputBlobName:(id)outputBlobName error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreSceneNetInferenceNetworkDescriptor

- (VisionCoreSceneNetInferenceNetworkDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v61.receiver = self;
  v61.super_class = VisionCoreSceneNetInferenceNetworkDescriptor;
  v5 = [(VisionCoreInferenceNetworkDescriptor *)&v61 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_model = [coderCopy decodeIntegerForKey:@"model"];
    v6 = objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"inputImageBlobName"];
    inputImageBlobName = v5->_inputImageBlobName;
    v5->_inputImageBlobName = v7;

    v9 = [coderCopy decodeObjectOfClass:v6 forKey:@"sceneLabelsFileName"];
    sceneLabelsFileName = v5->_sceneLabelsFileName;
    v5->_sceneLabelsFileName = v9;

    v11 = [coderCopy decodeObjectOfClass:v6 forKey:@"sceneLabelRelationshipsFileName"];
    sceneLabelRelationshipsFileName = v5->_sceneLabelRelationshipsFileName;
    v5->_sceneLabelRelationshipsFileName = v11;

    v13 = [coderCopy decodeObjectOfClass:v6 forKey:@"sceneRepresentationBlobName"];
    sceneRepresentationBlobName = v5->_sceneRepresentationBlobName;
    v5->_sceneRepresentationBlobName = v13;

    v15 = [coderCopy decodeObjectOfClass:v6 forKey:@"sceneClassificationLabelsBlobName"];
    sceneClassificationLabelsBlobName = v5->_sceneClassificationLabelsBlobName;
    v5->_sceneClassificationLabelsBlobName = v15;

    v17 = [coderCopy decodeObjectOfClass:v6 forKey:@"sceneOperatingPointsFileName"];
    sceneOperatingPointsFileName = v5->_sceneOperatingPointsFileName;
    v5->_sceneOperatingPointsFileName = v17;

    v19 = [coderCopy decodeObjectOfClass:v6 forKey:@"pca256FileName"];
    pca256FileName = v5->_pca256FileName;
    v5->_pca256FileName = v19;

    v21 = [coderCopy decodeObjectOfClass:v6 forKey:@"aestheticsLabelsFileName"];
    aestheticsLabelsFileName = v5->_aestheticsLabelsFileName;
    v5->_aestheticsLabelsFileName = v21;

    v23 = [coderCopy decodeObjectOfClass:v6 forKey:@"aestheticsScoresBlobName"];
    aestheticsScoresBlobName = v5->_aestheticsScoresBlobName;
    v5->_aestheticsScoresBlobName = v23;

    v25 = [coderCopy decodeObjectOfClass:v6 forKey:@"aestheticsAttributesBlobName"];
    aestheticsAttributesBlobName = v5->_aestheticsAttributesBlobName;
    v5->_aestheticsAttributesBlobName = v25;

    v27 = [coderCopy decodeObjectOfClass:v6 forKey:@"saliencyAHeatMapBlobName"];
    saliencyAHeatMapBlobName = v5->_saliencyAHeatMapBlobName;
    v5->_saliencyAHeatMapBlobName = v27;

    v29 = [coderCopy decodeObjectOfClass:v6 forKey:@"saliencyOHeatMapBlobName"];
    saliencyOHeatMapBlobName = v5->_saliencyOHeatMapBlobName;
    v5->_saliencyOHeatMapBlobName = v29;

    v5->_shouldInitializeAdditionalModelHeads = [coderCopy decodeBoolForKey:@"shouldInitializeAdditionalModelHeads"];
    v31 = [coderCopy decodeObjectOfClass:v6 forKey:@"objectDetectorLabelsFileName"];
    objectDetectorLabelsFileName = v5->_objectDetectorLabelsFileName;
    v5->_objectDetectorLabelsFileName = v31;

    v33 = [coderCopy decodeObjectOfClass:v6 forKey:@"objectDetectorOutputBlobBaseName"];
    objectDetectorOutputBlobBaseName = v5->_objectDetectorOutputBlobBaseName;
    v5->_objectDetectorOutputBlobBaseName = v33;

    v35 = [coderCopy decodeObjectOfClass:v6 forKey:@"objectDetectorScoresOutputBlobName"];
    objectDetectorScoresOutputBlobName = v5->_objectDetectorScoresOutputBlobName;
    v5->_objectDetectorScoresOutputBlobName = v35;

    v37 = [coderCopy decodeObjectOfClass:v6 forKey:@"objectDetectorCoordinatesOutputBlobName"];
    objectDetectorCoordinatesOutputBlobName = v5->_objectDetectorCoordinatesOutputBlobName;
    v5->_objectDetectorCoordinatesOutputBlobName = v37;

    v39 = [coderCopy decodeObjectOfClass:v6 forKey:@"sliderNetBlobNamePrefix"];
    sliderNetBlobNamePrefix = v5->_sliderNetBlobNamePrefix;
    v5->_sliderNetBlobNamePrefix = v39;

    v41 = [coderCopy decodeObjectOfClass:v6 forKey:@"fingerprintsHasherFileName"];
    fingerprintsHasherFileName = v5->_fingerprintsHasherFileName;
    v5->_fingerprintsHasherFileName = v41;

    v43 = [coderCopy decodeObjectOfClass:v6 forKey:@"fingerprintsOutputBlobName"];
    fingerprintsOutputBlobName = v5->_fingerprintsOutputBlobName;
    v5->_fingerprintsOutputBlobName = v43;

    v45 = objc_opt_class();
    v46 = [coderCopy decodeObjectOfClass:v45 forKey:@"junkLeaf"];
    junkLeafCustomClassifierDescriptor = v5->_junkLeafCustomClassifierDescriptor;
    v5->_junkLeafCustomClassifierDescriptor = v46;

    v48 = [coderCopy decodeObjectOfClass:v45 forKey:@"junkHierarchical"];
    junkHierarchicalCustomClassifierDescriptor = v5->_junkHierarchicalCustomClassifierDescriptor;
    v5->_junkHierarchicalCustomClassifierDescriptor = v48;

    v50 = [coderCopy decodeObjectOfClass:v45 forKey:@"VNVYvzEtX1JlUdu8xx5qhDI"];
    VNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor = v5->_VNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor;
    v5->_VNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor = v50;

    v52 = [coderCopy decodeObjectOfClass:v45 forKey:@"potentialLandmark"];
    potentialLandmarksCustomClassifierDescriptor = v5->_potentialLandmarksCustomClassifierDescriptor;
    v5->_potentialLandmarksCustomClassifierDescriptor = v52;

    v54 = [coderCopy decodeObjectOfClass:v45 forKey:@"VN5kJNH3eYuyaLxNpZr5Z7zi"];
    VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor = v5->_VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor;
    v5->_VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor = v54;

    v56 = [coderCopy decodeObjectOfClass:v45 forKey:@"VNdGg5skzXHSAENO6T3enHE"];
    VNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor = v5->_VNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor;
    v5->_VNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor = v56;

    v58 = [coderCopy decodeObjectOfClass:v45 forKey:@"cityNature"];
    cityNatureCustomClassifierDescriptor = v5->_cityNatureCustomClassifierDescriptor;
    v5->_cityNatureCustomClassifierDescriptor = v58;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VisionCoreSceneNetInferenceNetworkDescriptor;
  coderCopy = coder;
  [(VisionCoreInferenceNetworkDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_model forKey:{@"model", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_inputImageBlobName forKey:@"inputImageBlobName"];
  [coderCopy encodeObject:self->_sceneLabelsFileName forKey:@"sceneLabelsFileName"];
  [coderCopy encodeObject:self->_sceneLabelRelationshipsFileName forKey:@"sceneLabelRelationshipsFileName"];
  [coderCopy encodeObject:self->_sceneRepresentationBlobName forKey:@"sceneRepresentationBlobName"];
  [coderCopy encodeObject:self->_sceneClassificationLabelsBlobName forKey:@"sceneClassificationLabelsBlobName"];
  [coderCopy encodeObject:self->_sceneOperatingPointsFileName forKey:@"sceneOperatingPointsFileName"];
  [coderCopy encodeObject:self->_pca256FileName forKey:@"pca256FileName"];
  [coderCopy encodeObject:self->_aestheticsLabelsFileName forKey:@"aestheticsLabelsFileName"];
  [coderCopy encodeObject:self->_aestheticsScoresBlobName forKey:@"aestheticsScoresBlobName"];
  [coderCopy encodeObject:self->_aestheticsAttributesBlobName forKey:@"aestheticsAttributesBlobName"];
  [coderCopy encodeObject:self->_saliencyAHeatMapBlobName forKey:@"saliencyAHeatMapBlobName"];
  [coderCopy encodeObject:self->_saliencyOHeatMapBlobName forKey:@"saliencyOHeatMapBlobName"];
  [coderCopy encodeBool:self->_shouldInitializeAdditionalModelHeads forKey:@"shouldInitializeAdditionalModelHeads"];
  [coderCopy encodeObject:self->_objectDetectorLabelsFileName forKey:@"objectDetectorLabelsFileName"];
  [coderCopy encodeObject:self->_objectDetectorOutputBlobBaseName forKey:@"objectDetectorOutputBlobBaseName"];
  [coderCopy encodeObject:self->_objectDetectorScoresOutputBlobName forKey:@"objectDetectorScoresOutputBlobName"];
  [coderCopy encodeObject:self->_objectDetectorCoordinatesOutputBlobName forKey:@"objectDetectorCoordinatesOutputBlobName"];
  [coderCopy encodeObject:self->_sliderNetBlobNamePrefix forKey:@"sliderNetBlobNamePrefix"];
  [coderCopy encodeObject:self->_fingerprintsHasherFileName forKey:@"fingerprintsHasherFileName"];
  [coderCopy encodeObject:self->_fingerprintsOutputBlobName forKey:@"fingerprintsOutputBlobName"];
  [coderCopy encodeObject:self->_junkLeafCustomClassifierDescriptor forKey:@"junkLeaf"];
  [coderCopy encodeObject:self->_junkHierarchicalCustomClassifierDescriptor forKey:@"junkHierarchical"];
  [coderCopy encodeObject:self->_VNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor forKey:@"VNVYvzEtX1JlUdu8xx5qhDI"];
  [coderCopy encodeObject:self->_potentialLandmarksCustomClassifierDescriptor forKey:@"potentialLandmark"];
  [coderCopy encodeObject:self->_VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor forKey:@"VN5kJNH3eYuyaLxNpZr5Z7zi"];
  [coderCopy encodeObject:self->_VNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor forKey:@"VNdGg5skzXHSAENO6T3enHE"];
  [coderCopy encodeObject:self->_cityNatureCustomClassifierDescriptor forKey:@"cityNature"];
}

- (id)ANESpecificURL
{
  aneSpecificModelURL = self->_aneSpecificModelURL;
  if (aneSpecificModelURL)
  {
    aNESpecificURL = aneSpecificModelURL;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VisionCoreSceneNetInferenceNetworkDescriptor;
    aNESpecificURL = [(VisionCoreEspressoNetworkDescriptor *)&v5 ANESpecificURL];
  }

  return aNESpecificURL;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v32 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v34.receiver = self, v34.super_class = VisionCoreSceneNetInferenceNetworkDescriptor, [(VisionCoreInferenceNetworkDescriptor *)&v34 isEqual:equalCopy]))
    {
      v5 = equalCopy;
      if (self->_model == v5->_model
        && ((inputImageBlobName = self->_inputImageBlobName, inputImageBlobName == v5->_inputImageBlobName) || [(NSString *)inputImageBlobName isEqual:?])
        && ((sceneLabelsFileName = self->_sceneLabelsFileName, sceneLabelsFileName == v5->_sceneLabelsFileName) || [(NSString *)sceneLabelsFileName isEqual:?])
        && ((sceneLabelRelationshipsFileName = self->_sceneLabelRelationshipsFileName, sceneLabelRelationshipsFileName == v5->_sceneLabelRelationshipsFileName) || [(NSString *)sceneLabelRelationshipsFileName isEqual:?])
        && ((sceneRepresentationBlobName = self->_sceneRepresentationBlobName, sceneRepresentationBlobName == v5->_sceneRepresentationBlobName) || [(NSString *)sceneRepresentationBlobName isEqual:?])
        && ((sceneClassificationLabelsBlobName = self->_sceneClassificationLabelsBlobName, sceneClassificationLabelsBlobName == v5->_sceneClassificationLabelsBlobName) || [(NSString *)sceneClassificationLabelsBlobName isEqual:?])
        && ((sceneOperatingPointsFileName = self->_sceneOperatingPointsFileName, sceneOperatingPointsFileName == v5->_sceneOperatingPointsFileName) || [(NSString *)sceneOperatingPointsFileName isEqual:?])
        && ((pca256FileName = self->_pca256FileName, pca256FileName == v5->_pca256FileName) || [(NSString *)pca256FileName isEqual:?])
        && ((aestheticsLabelsFileName = self->_aestheticsLabelsFileName, aestheticsLabelsFileName == v5->_aestheticsLabelsFileName) || [(NSString *)aestheticsLabelsFileName isEqual:?])
        && ((aestheticsScoresBlobName = self->_aestheticsScoresBlobName, aestheticsScoresBlobName == v5->_aestheticsScoresBlobName) || [(NSString *)aestheticsScoresBlobName isEqual:?])
        && ((aestheticsAttributesBlobName = self->_aestheticsAttributesBlobName, aestheticsAttributesBlobName == v5->_aestheticsAttributesBlobName) || [(NSString *)aestheticsAttributesBlobName isEqual:?])
        && ((saliencyAHeatMapBlobName = self->_saliencyAHeatMapBlobName, saliencyAHeatMapBlobName == v5->_saliencyAHeatMapBlobName) || [(NSString *)saliencyAHeatMapBlobName isEqual:?])
        && ((saliencyOHeatMapBlobName = self->_saliencyOHeatMapBlobName, saliencyOHeatMapBlobName == v5->_saliencyOHeatMapBlobName) || [(NSString *)saliencyOHeatMapBlobName isEqual:?])
        && self->_shouldInitializeAdditionalModelHeads == v5->_shouldInitializeAdditionalModelHeads
        && ((objectDetectorLabelsFileName = self->_objectDetectorLabelsFileName, objectDetectorLabelsFileName == v5->_objectDetectorLabelsFileName) || [(NSString *)objectDetectorLabelsFileName isEqual:?])
        && ((objectDetectorOutputBlobBaseName = self->_objectDetectorOutputBlobBaseName, objectDetectorOutputBlobBaseName == v5->_objectDetectorOutputBlobBaseName) || [(NSString *)objectDetectorOutputBlobBaseName isEqual:?])
        && ((objectDetectorScoresOutputBlobName = self->_objectDetectorScoresOutputBlobName, objectDetectorScoresOutputBlobName == v5->_objectDetectorScoresOutputBlobName) || [(NSString *)objectDetectorScoresOutputBlobName isEqual:?])
        && ((objectDetectorCoordinatesOutputBlobName = self->_objectDetectorCoordinatesOutputBlobName, objectDetectorCoordinatesOutputBlobName == v5->_objectDetectorCoordinatesOutputBlobName) || [(NSString *)objectDetectorCoordinatesOutputBlobName isEqual:?])
        && ((sliderNetBlobNamePrefix = self->_sliderNetBlobNamePrefix, sliderNetBlobNamePrefix == v5->_sliderNetBlobNamePrefix) || [(NSString *)sliderNetBlobNamePrefix isEqual:?])
        && ((fingerprintsHasherFileName = self->_fingerprintsHasherFileName, fingerprintsHasherFileName == v5->_fingerprintsHasherFileName) || [(NSString *)fingerprintsHasherFileName isEqual:?])
        && ((fingerprintsOutputBlobName = self->_fingerprintsOutputBlobName, fingerprintsOutputBlobName == v5->_fingerprintsOutputBlobName) || [(NSString *)fingerprintsOutputBlobName isEqual:?])
        && ((junkLeafCustomClassifierDescriptor = self->_junkLeafCustomClassifierDescriptor, junkLeafCustomClassifierDescriptor == v5->_junkLeafCustomClassifierDescriptor) || [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)junkLeafCustomClassifierDescriptor isEqual:?])
        && ((junkHierarchicalCustomClassifierDescriptor = self->_junkHierarchicalCustomClassifierDescriptor, junkHierarchicalCustomClassifierDescriptor == v5->_junkHierarchicalCustomClassifierDescriptor) || [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)junkHierarchicalCustomClassifierDescriptor isEqual:?])
        && ((VNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor = self->_VNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor, VNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor == v5->_VNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor) || [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)VNVYvzEtX1JlUdu8xx5qhDICustomClassifierDescriptor isEqual:?])
        && ((potentialLandmarksCustomClassifierDescriptor = self->_potentialLandmarksCustomClassifierDescriptor, potentialLandmarksCustomClassifierDescriptor == v5->_potentialLandmarksCustomClassifierDescriptor) || [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)potentialLandmarksCustomClassifierDescriptor isEqual:?])
        && ((VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor = self->_VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor, VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor == v5->_VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor) || [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)VN5kJNH3eYuyaLxNpZr5Z7ziCustomClassifierDescriptor isEqual:?])
        && ((VNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor = self->_VNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor, VNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor == v5->_VNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor) || [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)VNdGg5skzXHSAENO6T3enHECustomClassifierDescriptor isEqual:?]))
      {
        cityNatureCustomClassifierDescriptor = self->_cityNatureCustomClassifierDescriptor;
        if (cityNatureCustomClassifierDescriptor == v5->_cityNatureCustomClassifierDescriptor)
        {
          v32 = 1;
        }

        else
        {
          v32 = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)cityNatureCustomClassifierDescriptor isEqual:?];
        }
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  return v32;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = VisionCoreSceneNetInferenceNetworkDescriptor;
  v3 = [(VisionCoreInferenceNetworkDescriptor *)&v5 hash];
  return [(VisionCoreSceneNetInferenceNetworkDescriptor *)self model]^ v3;
}

- (NSURL)fingerprintsHasherFileURL
{
  v3 = objc_opt_class();
  fingerprintsHasherFileName = self->_fingerprintsHasherFileName;

  return [v3 URLForResourceNamed:fingerprintsHasherFileName error:0];
}

- (NSURL)objectDetectorLabelsFileURL
{
  v3 = objc_opt_class();
  objectDetectorLabelsFileName = self->_objectDetectorLabelsFileName;

  return [v3 URLForResourceNamed:objectDetectorLabelsFileName error:0];
}

- (NSURL)aestheticsLabelsFileURL
{
  v3 = objc_opt_class();
  aestheticsLabelsFileName = self->_aestheticsLabelsFileName;

  return [v3 URLForResourceNamed:aestheticsLabelsFileName error:0];
}

- (NSURL)pca256FileURL
{
  v3 = objc_opt_class();
  pca256FileName = self->_pca256FileName;

  return [v3 URLForResourceNamed:pca256FileName error:0];
}

- (NSURL)entityNetOperatingPointsFileURL
{
  v3 = objc_opt_class();
  entityNetOperatingPointsFileName = self->_entityNetOperatingPointsFileName;

  return [v3 URLForResourceNamed:entityNetOperatingPointsFileName error:0];
}

- (NSURL)entityNetLabelsFileURL
{
  v3 = objc_opt_class();
  entityNetLabelsFileName = self->_entityNetLabelsFileName;

  return [v3 URLForResourceNamed:entityNetLabelsFileName error:0];
}

- (NSURL)sceneOperatingPointsFileURL
{
  v3 = objc_opt_class();
  sceneOperatingPointsFileName = self->_sceneOperatingPointsFileName;

  return [v3 URLForResourceNamed:sceneOperatingPointsFileName error:0];
}

- (NSURL)sceneLabelRelationshipsFileURL
{
  v3 = objc_opt_class();
  sceneLabelRelationshipsFileName = self->_sceneLabelRelationshipsFileName;

  return [v3 URLForResourceNamed:sceneLabelRelationshipsFileName error:0];
}

- (NSURL)sceneLabelsFileURL
{
  v3 = objc_opt_class();
  sceneLabelsFileName = self->_sceneLabelsFileName;

  return [v3 URLForResourceNamed:sceneLabelsFileName error:0];
}

- (NSString)analyzerName
{
  v2 = [(VisionCoreInferenceNetworkDescriptor *)self URL];
  lastPathComponent = [v2 lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (VisionCoreTensorDescriptor)sceneLabelConfidencesOutput
{
  sceneClassificationLabelsBlobName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self sceneClassificationLabelsBlobName];
  v4 = [(VisionCoreInferenceNetworkDescriptor *)self outputNamed:sceneClassificationLabelsBlobName error:0];

  return v4;
}

- (VisionCoreTensorDescriptor)sceneprintOutput
{
  sceneRepresentationBlobName = [(VisionCoreSceneNetInferenceNetworkDescriptor *)self sceneRepresentationBlobName];
  v4 = [(VisionCoreInferenceNetworkDescriptor *)self outputNamed:sceneRepresentationBlobName error:0];

  return v4;
}

- (id)_newCustomClassifierDescriptorWithModelName:(id)name labelsFileName:(id)fileName inputBlobName:(id)blobName outputBlobName:(id)outputBlobName error:(id *)error
{
  fileNameCopy = fileName;
  blobNameCopy = blobName;
  outputBlobNameCopy = outputBlobName;
  nameCopy = name;
  v15 = [objc_opt_class() URLForEspressoModelNamed:nameCopy error:error];

  if (v15)
  {
    v16 = [objc_opt_class() URLForResourceNamed:fileNameCopy error:error];
    if (v16)
    {
      v17 = [[VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor alloc] initWithModelFileURL:v15 labelsFileURL:v16 inputBlobName:blobNameCopy outputBlobName:outputBlobNameCopy];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)sceneNetObjDetNetSliderNetV3AndReturnError:(id *)error
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__VisionCoreSceneNetInferenceNetworkDescriptor_sceneNetObjDetNetSliderNetV3AndReturnError___block_invoke;
  v9[3] = &__block_descriptor_40_e9__16__0__8l;
  v9[4] = self;
  v4 = MEMORY[0x1E12C8870](v9, a2);
  v5 = +[VisionCoreFrameworkManager sharedManager];
  inferenceNetworkDescriptorsCache = [v5 inferenceNetworkDescriptorsCache];
  v7 = [inferenceNetworkDescriptorsCache objectForIdentifier:@"SceneNetObjDetNetSliderNetV3" creationBlock:v4 error:error];

  return v7;
}

+ (id)sceneNetV3AndReturnError:(id *)error
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__VisionCoreSceneNetInferenceNetworkDescriptor_sceneNetV3AndReturnError___block_invoke;
  v9[3] = &__block_descriptor_40_e9__16__0__8l;
  v9[4] = self;
  v4 = MEMORY[0x1E12C8870](v9, a2);
  v5 = +[VisionCoreFrameworkManager sharedManager];
  inferenceNetworkDescriptorsCache = [v5 inferenceNetworkDescriptorsCache];
  v7 = [inferenceNetworkDescriptorsCache objectForIdentifier:@"SceneNetV3" creationBlock:v4 error:error];

  return v7;
}

+ (id)descriptorForModel:(unint64_t)model requireObjDetNet:(BOOL)net requireSliderNet:(BOOL)sliderNet error:(id *)error
{
  sliderNetCopy = sliderNet;
  netCopy = net;
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v11 = [self _getAnalyzerName:&v76 ANESpecificAnalyzerName:&v75 specifier:&v74 forModel:model objDetNet:net sliderNet:sliderNet error:error];
  v12 = v76;
  v13 = v75;
  v14 = v74;
  v15 = 0;
  if (v11)
  {
    v16 = [self URLForEspressoModelNamed:v12 error:error];
    if (!v16)
    {
LABEL_5:
      v15 = 0;
LABEL_32:

      goto LABEL_33;
    }

    if (v13)
    {
      v17 = [self URLForEspressoModelNamed:v13 error:error];
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 0;
    }

    if (model != 1)
    {
      if (!error)
      {
        v15 = 0;
LABEL_31:

        goto LABEL_32;
      }

      obj = v17;
      v71 = v14;
      v63 = objc_alloc(MEMORY[0x1E696AEC0]);
      v64 = NSStringFromVisionCoreSceneNetInferenceNetworkModel(model);
      v65 = [v63 initWithFormat:@"%@ is not supported", v64];

      [MEMORY[0x1E696ABC0] VisionCoreErrorForFailedOperationWithLocalizedDescription:v65];
      *error = v15 = 0;
LABEL_30:

      v17 = obj;
      v14 = v71;
      goto LABEL_31;
    }

    obj = v17;
    v71 = v14;
    v69 = v16;
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v67 = netCopy || sliderNetCopy;
    if (netCopy || sliderNetCopy)
    {
      v20 = [[VisionCoreResourceVersion alloc] initWithMajor:3 minor:0 micro:0];
      [v19 setObject:v20 forKeyedSubscript:@"VisionCoreSceneNetInferenceNetworkHeadIdentifierObjDetNet"];

      [v18 setObject:&unk_1F59F9468 forKeyedSubscript:@"slidernet/HighKeyCI"];
      [v18 setObject:&unk_1F59F9468 forKeyedSubscript:@"slidernet/ContrastCI"];
      [v18 setObject:&unk_1F59F9468 forKeyedSubscript:@"slidernet/WhiteBalanceTempTintCI"];
      [v18 setObject:&unk_1F59F9468 forKeyedSubscript:@"slidernet/ColorCastCI"];
      [v18 setObject:&unk_1F59F9468 forKeyedSubscript:@"slidernet/ExposureAndBlackPointCI"];
      [v18 setObject:&unk_1F59F9468 forKeyedSubscript:@"slidernet/HighlightsCI"];
      [v18 setObject:&unk_1F59F9468 forKeyedSubscript:@"slidernet/VibrancyCI"];
      v21 = [[VisionCoreResourceVersion alloc] initWithMajor:3 minor:0 micro:0];
      [v19 setObject:v21 forKeyedSubscript:@"VisionCoreSceneNetInferenceNetworkHeadIdentifierSliderNet"];
    }

    [v18 setObject:&unk_1F59F9480 forKeyedSubscript:@"objectness/map"];
    [v18 setObject:&unk_1F59F9468 forKeyedSubscript:@"classification/labels"];
    v22 = [[VisionCoreResourceVersion alloc] initWithMajor:3 minor:0 micro:0];
    [v19 setObject:v22 forKeyedSubscript:@"VisionCoreSceneNetInferenceNetworkHeadIdentifierSaliencyO"];

    [v18 setObject:&unk_1F59F9468 forKeyedSubscript:@"inner/sceneprint"];
    [v18 setObject:&unk_1F59F9468 forKeyedSubscript:@"aesthetics/scores"];
    [v18 setObject:&unk_1F59F9468 forKeyedSubscript:@"aesthetics/attributes"];
    [v18 setObject:&unk_1F59F9480 forKeyedSubscript:@"saliency/map"];
    v23 = [[VisionCoreResourceVersion alloc] initWithMajor:3 minor:0 micro:0];
    [v19 setObject:v23 forKeyedSubscript:@"VisionCoreSceneNetInferenceNetworkHeadIdentifierSceneClassification"];

    v24 = [[VisionCoreResourceVersion alloc] initWithMajor:3 minor:0 micro:0];
    [v19 setObject:v24 forKeyedSubscript:@"VisionCoreSceneNetInferenceNetworkHeadIdentifierAesthetics"];

    v25 = [[VisionCoreResourceVersion alloc] initWithMajor:3 minor:0 micro:0];
    [v19 setObject:v25 forKeyedSubscript:@"VisionCoreSceneNetInferenceNetworkHeadIdentifierSaliencyA"];

    v72 = 0;
    v73 = 0;
    v68 = v18;
    LODWORD(v25) = [VisionCoreEspressoUtils getInputImageTensorDescriptor:&v73 outputTensorDescriptors:&v72 forNetworkModelFileURL:v69 inputBlobName:@"data" pixelFormatType:1111970369 outputBlobNamesWithTypes:v18 confidencesBlobNamesWithLabelsFiles:0 error:error];
    v26 = v73;
    v27 = v72;
    v15 = 0;
    v28 = v19;
    if (!v25)
    {
LABEL_29:

      v65 = v68;
      v16 = v69;
      goto LABEL_30;
    }

    v29 = v27;
    v30 = [self alloc];
    v31 = v29;
    allValues = [v29 allValues];
    v33 = [v30 initWithURL:v69 specifier:v71 networkHeadVersions:v28 inputImage:v26 outputs:allValues confidencesOutput:0];

    if (v33)
    {
      *(v33 + 64) = 1;
      objc_storeStrong((v33 + 72), obj);
      *(v33 + 200) = v67;
      v34 = *(v33 + 192);
      *(v33 + 192) = @"objectness/map";

      if (sliderNetCopy)
      {
        v35 = *(v33 + 240);
        *(v33 + 240) = @"slidernet/";
      }

      v36 = *(v33 + 88);
      *(v33 + 88) = @"scenenet_labels_basic-v8d.csv";

      v37 = *(v33 + 96);
      *(v33 + 96) = @"scenenet_relationships-v8d.txt";

      v38 = *(v33 + 112);
      *(v33 + 112) = @"classification/labels";

      v39 = *(v33 + 120);
      *(v33 + 120) = @"scenenet_op-v8d.plist";

      v40 = *(v33 + 208);
      *(v33 + 208) = @"GXdCvXzGnLp59suJyVSan_labels.txt";

      v41 = *(v33 + 216);
      *(v33 + 216) = @"detection/concat";

      v42 = *(v33 + 80);
      *(v33 + 80) = @"data";

      v43 = *(v33 + 104);
      *(v33 + 104) = @"inner/sceneprint";

      v44 = *(v33 + 152);
      *(v33 + 152) = @"scenenet_sc2.4_sa1.4_ae1.4_r9_opt_int8_pca256.pcadata";

      v45 = *(v33 + 160);
      *(v33 + 160) = @"scenenet_aesthetic_labels_basic-v8e.txt";

      v46 = *(v33 + 168);
      *(v33 + 168) = @"aesthetics/scores";

      v47 = *(v33 + 176);
      *(v33 + 176) = @"aesthetics/attributes";

      v48 = *(v33 + 184);
      *(v33 + 184) = @"saliency/map";

      v49 = [v33 _newCustomClassifierDescriptorWithModelName:@"junk_leaf.r14.j9.espresso" labelsFileName:@"junk_leaf.labels_basic-v3b.txt" inputBlobName:@"stem/SpatialSqueeze_COPY254" outputBlobName:@"leaf/probabilities" error:error];
      v50 = *(v33 + 264);
      *(v33 + 264) = v49;

      if (*(v33 + 264))
      {
        v51 = [v33 _newCustomClassifierDescriptorWithModelName:@"junk_hierarchical.r14.j9.espresso" labelsFileName:@"junk_hierarchical.labels_higher_order-v3b.txt" inputBlobName:@"stem/SpatialSqueeze_COPY254" outputBlobName:@"hierarchical/probabilities" error:error];
        v52 = *(v33 + 272);
        *(v33 + 272) = v51;

        if (*(v33 + 272))
        {
          v53 = [v33 _newCustomClassifierDescriptorWithModelName:@"vienna.r14.n4.1.espresso" labelsFileName:@"labels_vienna-v1e.txt" inputBlobName:@"stem/SpatialSqueeze_COPY254" outputBlobName:@"leaf/probabilities" error:error];
          v54 = *(v33 + 280);
          *(v33 + 280) = v53;

          if (*(v33 + 280))
          {
            v55 = [v33 _newCustomClassifierDescriptorWithModelName:@"landmarks_gating.r14.l3.espresso" labelsFileName:@"landmarks_gating_labels.txt" inputBlobName:@"stem/SpatialSqueeze_COPY254" outputBlobName:@"labels/probabilities" error:error];
            v56 = *(v33 + 288);
            *(v33 + 288) = v55;

            if (*(v33 + 288))
            {
              v57 = [v33 _newCustomClassifierDescriptorWithModelName:@"sg.r14.s4.espresso" labelsFileName:@"sg_labels.txt" inputBlobName:@"stem/SpatialSqueeze_NEW254" outputBlobName:@"hierarchical/probabilities" error:error];
              v58 = *(v33 + 296);
              *(v33 + 296) = v57;

              if (*(v33 + 296))
              {
                v59 = [v33 _newCustomClassifierDescriptorWithModelName:@"events_gating.r14.e4.espresso" labelsFileName:@"events_gating_labels_basic-v1c.txt" inputBlobName:@"stem/SpatialSqueeze_COPY254" outputBlobName:@"leaf/probabilities" error:error];
                v60 = *(v33 + 304);
                *(v33 + 304) = v59;

                if (*(v33 + 304))
                {
                  v61 = [v33 _newCustomClassifierDescriptorWithModelName:@"d76p746ctq_50001_split.espresso" labelsFileName:@"d76p746ctq_50001.txt" inputBlobName:@"stem/gap/Mean" outputBlobName:@"leaf/probabilities" error:error];
                  v62 = *(v33 + 312);
                  *(v33 + 312) = v61;

                  if (*(v33 + 312))
                  {
                    v15 = v33;
LABEL_28:

                    v27 = v31;
                    goto LABEL_29;
                  }
                }
              }
            }
          }
        }
      }
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"could not create descriptor"];
      *error = v15 = 0;
      goto LABEL_28;
    }

    v15 = 0;
    goto LABEL_28;
  }

LABEL_33:

  return v15;
}

+ (BOOL)_getAnalyzerName:(id *)name ANESpecificAnalyzerName:(id *)analyzerName specifier:(id *)specifier forModel:(unint64_t)model objDetNet:(BOOL)net sliderNet:(BOOL)sliderNet error:(id *)error
{
  if (model == 1)
  {
    errorCopy = specifier;
    if (analyzerName)
    {
      *analyzerName = 0;
    }

    if (net || sliderNet)
    {
      if (name)
      {
        *name = @"sn3_all_heads_combined_299_no_softmax.espresso";
      }

      if (specifier)
      {
        v11 = [VisionCoreProcessingDescriptorSpecifier alloc];
        v12 = [[VisionCoreResourceVersion alloc] initWithMajor:3 minor:0 micro:0];
        v13 = @"VisionCoreInferenceNetworkIdentifierSceneNetObjDetNetSliderNet";
LABEL_15:
        v16 = [(VisionCoreProcessingDescriptorSpecifier *)v11 initWithIdentifier:v13 version:v12];
        goto LABEL_16;
      }
    }

    else
    {
      if (name)
      {
        *name = @"sn3_4heads_combined_299_no_softmax.espresso";
      }

      if (specifier)
      {
        v11 = [VisionCoreProcessingDescriptorSpecifier alloc];
        v12 = [[VisionCoreResourceVersion alloc] initWithMajor:3 minor:0 micro:0];
        v13 = @"VisionCoreInferenceNetworkIdentifierSceneNet";
        goto LABEL_15;
      }
    }
  }

  else
  {
    errorCopy = error;
    if (error)
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:model];
      v12 = [v14 initWithFormat:@"unsupported model %@", v15];

      v16 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v12];
LABEL_16:
      *errorCopy = v16;
    }
  }

  return model == 1;
}

@end