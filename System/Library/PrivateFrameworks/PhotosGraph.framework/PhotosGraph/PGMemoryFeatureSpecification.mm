@interface PGMemoryFeatureSpecification
- (PGMemoryFeatureSpecification)initWithFeatureType:(int64_t)type typeSpecificIdentifiers:(id)identifiers combineFeatureNodes:(BOOL)nodes graph:(id)graph loggingConnection:(id)connection;
- (id)featureNodesInGraph:(id)graph;
@end

@implementation PGMemoryFeatureSpecification

- (id)featureNodesInGraph:(id)graph
{
  graphCopy = graph;
  switch(self->_featureType)
  {
    case 1:
      v5 = PGGraphMonthDayNodeCollection;
      goto LABEL_62;
    case 2:
      typeSpecificIdentifiers = self->_typeSpecificIdentifiers;
      if (!typeSpecificIdentifiers)
      {
        goto LABEL_61;
      }

      if ([(NSSet *)typeSpecificIdentifiers count]== 1)
      {
        anyObject = [(NSSet *)self->_typeSpecificIdentifiers anyObject];
        v15 = [PGGraphSeasonNodeCollection seasonNodesForSeasonName:anyObject inGraph:graphCopy];
        featureNodeCollection = [v15 featureNodeCollection];

        goto LABEL_65;
      }

      v28 = self->_typeSpecificIdentifiers;
      if (!v28 || [(NSSet *)v28 count]< 2)
      {
LABEL_61:
        v5 = PGGraphSeasonNodeCollection;
        goto LABEL_62;
      }

      loggingConnection = self->_loggingConnection;
      if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v26 = "[PGMemoryFeatureSpecification] Only one seasonName should be defined in the PGFeatureTypeSeason typeSpecificIdentifier.";
      v27 = buf;
      goto LABEL_59;
    case 3:
      v5 = PGGraphAreaNodeCollection;
      goto LABEL_62;
    case 4:
      v12 = self->_typeSpecificIdentifiers;
      v8 = PGGraphROINodeCollection;
      if (!v12)
      {
        goto LABEL_28;
      }

      allObjects = [(NSSet *)v12 allObjects];
      businessNodes = [PGGraphROINodeCollection roiNodesForLabels:allObjects inGraph:graphCopy];
      goto LABEL_41;
    case 5:
      v7 = self->_typeSpecificIdentifiers;
      v8 = PGGraphPOINodeCollection;
      if (!v7)
      {
        goto LABEL_28;
      }

      allObjects = [(NSSet *)v7 allObjects];
      businessNodes = [PGGraphPOINodeCollection poiNodesForLabels:allObjects inGraph:graphCopy];
      goto LABEL_41;
    case 6:
      v5 = PGGraphLocationDistrictNodeCollection;
      goto LABEL_62;
    case 7:
      v5 = PGGraphAddressNodeCollection;
      goto LABEL_62;
    case 8:
      v5 = PGGraphLocationCityNodeCollection;
      goto LABEL_62;
    case 9:
      v5 = PGGraphLocationStateNodeCollection;
      goto LABEL_62;
    case 0xALL:
      v5 = PGGraphLocationCountryNodeCollection;
      goto LABEL_62;
    case 0xBLL:
      v6 = [PGGraphHomeWorkNodeCollection homeNodesInGraph:graphCopy];
      goto LABEL_63;
    case 0xCLL:
      v6 = [PGGraphHomeWorkNodeCollection workNodesInGraph:graphCopy];
      goto LABEL_63;
    case 0xDLL:
      v5 = PGGraphFrequentLocationNodeCollection;
      goto LABEL_62;
    case 0xELL:
      v5 = PGGraphSocialGroupNodeCollection;
      goto LABEL_62;
    case 0xFLL:
      v6 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:graphCopy];
      goto LABEL_63;
    case 0x10:
      v6 = [PGGraphPersonNodeCollection personNodesInAgeCategories:&unk_2844859A0 includingMe:0 inGraph:graphCopy];
      goto LABEL_63;
    case 0x11:
      v5 = PGGraphPetNodeCollection;
      goto LABEL_62;
    case 0x12:
      v17 = self->_typeSpecificIdentifiers;
      if (v17)
      {
        v6 = [PGGraphSceneNodeCollection sceneNodesForSceneNames:v17 inGraph:graphCopy];
        goto LABEL_63;
      }

      loggingConnection = self->_loggingConnection;
      if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v35 = 0;
      v26 = "[PGMemoryFeatureSpecification] No sceneNames specified for PGFeatureTypeScene.";
      v27 = &v35;
      goto LABEL_59;
    case 0x13:
      v20 = self->_typeSpecificIdentifiers;
      if (v20)
      {
        allObjects = [(NSSet *)v20 allObjects];
        businessNodes = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneNames:allObjects inGraph:graphCopy];
        goto LABEL_41;
      }

      loggingConnection = self->_loggingConnection;
      if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v34 = 0;
      v26 = "[PGMemoryFeatureSpecification] No sceneFeatureNodeLabels specified for PGFeatureTypeSceneFeature";
      v27 = &v34;
      goto LABEL_59;
    case 0x14:
      v22 = self->_typeSpecificIdentifiers;
      v5 = PGGraphAudioFeatureNodeCollection;
      if (!v22)
      {
        goto LABEL_62;
      }

      v6 = [PGGraphAudioFeatureNodeCollection audioFeatureNodesForLabels:v22 inGraph:graphCopy];
      goto LABEL_63;
    case 0x15:
      v18 = self->_typeSpecificIdentifiers;
      if (v18)
      {
        allObjects = [(NSSet *)v18 allObjects];
        businessNodes = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:allObjects inGraph:graphCopy];
        goto LABEL_41;
      }

      loggingConnection = self->_loggingConnection;
      if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v33 = 0;
      v26 = "[PGMemoryFeatureSpecification] No meaningLabels specified for PGFeatureTypeMeaning.";
      v27 = &v33;
      goto LABEL_59;
    case 0x16:
      v19 = self->_typeSpecificIdentifiers;
      v8 = PGGraphHolidayNodeCollection;
      if (v19)
      {
        allObjects = [(NSSet *)v19 allObjects];
        businessNodes = [PGGraphHolidayNodeCollection holidayNodesWithNames:allObjects inGraph:graphCopy];
        goto LABEL_41;
      }

LABEL_28:
      v5 = v8;
LABEL_62:
      v6 = [(__objc2_class *)v5 nodesInGraph:graphCopy];
      goto LABEL_63;
    case 0x17:
      v21 = self->_typeSpecificIdentifiers;
      if (v21)
      {
        v6 = [PGGraphPersonActivityMeaningNodeCollection personActivityMeaningNodesForActivityLabels:v21 inGraph:graphCopy];
        goto LABEL_63;
      }

      loggingConnection = self->_loggingConnection;
      if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v32 = 0;
      v26 = "[PGMemoryFeatureSpecification] No activityLabels specified for PGFeatureTypePersonActivityMeaning.";
      v27 = &v32;
      goto LABEL_59;
    case 0x18:
      v23 = self->_typeSpecificIdentifiers;
      if (v23)
      {
        allObjects = [PGGraphBusinessCategoryNodeCollection businessCategoryNodesForCategories:v23 inGraph:graphCopy];
        businessNodes = [allObjects businessNodes];
LABEL_41:
        v24 = businessNodes;
        featureNodeCollection = [businessNodes featureNodeCollection];

        goto LABEL_64;
      }

      loggingConnection = self->_loggingConnection;
      if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v31 = 0;
      v26 = "[PGMemoryFeatureSpecification] No businessCategories specified for PGFeatureTypeBusiness.";
      v27 = &v31;
      goto LABEL_59;
    case 0x19:
      v11 = self->_typeSpecificIdentifiers;
      if (v11)
      {
        v6 = [PGGraphPublicEventNodeCollection publicEventNodesWithCategories:v11 inGraph:graphCopy];
LABEL_63:
        allObjects = v6;
        featureNodeCollection = [v6 featureNodeCollection];
LABEL_64:
      }

      else
      {
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          v30 = 0;
          v26 = "[PGMemoryFeatureSpecification] No publicEventCategories specified for PGFeatureTypePublicEvent.";
          v27 = &v30;
LABEL_59:
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, v26, v27, 2u);
        }

LABEL_60:
        featureNodeCollection = 0;
      }

LABEL_65:

      return featureNodeCollection;
    case 0x1ALL:
      allObjects = [PGGraphHighlightTypeNodeCollection concludedTripTypeNodesInGraph:graphCopy];
      businessNodes = [allObjects highlightGroupNodes];
      goto LABEL_41;
    case 0x1BLL:
      v5 = PGGraphMeNodeCollection;
      goto LABEL_62;
    default:
      goto LABEL_60;
  }
}

- (PGMemoryFeatureSpecification)initWithFeatureType:(int64_t)type typeSpecificIdentifiers:(id)identifiers combineFeatureNodes:(BOOL)nodes graph:(id)graph loggingConnection:(id)connection
{
  identifiersCopy = identifiers;
  graphCopy = graph;
  connectionCopy = connection;
  v21.receiver = self;
  v21.super_class = PGMemoryFeatureSpecification;
  v16 = [(PGMemoryFeatureSpecification *)&v21 init];
  v17 = v16;
  if (v16)
  {
    v16->_featureType = type;
    objc_storeStrong(&v16->_typeSpecificIdentifiers, identifiers);
    v17->_combineFeatureNodes = nodes;
    objc_storeStrong(&v17->_loggingConnection, connection);
    v18 = [(PGMemoryFeatureSpecification *)v17 featureNodesInGraph:graphCopy];
    featureNodes = v17->_featureNodes;
    v17->_featureNodes = v18;
  }

  return v17;
}

@end