@interface CLSJunkClassificationModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version;
- (CLSJunkClassificationModel)initWithSceneAnalysisVersion:(unint64_t)version;
- (id)modelInfo;
- (id)nodeForSignalIdentifier:(unint64_t)identifier;
- (void)setupVersion31;
- (void)setupVersion32;
- (void)setupVersion40;
- (void)setupVersion81;
- (void)setupVersion86;
@end

@implementation CLSJunkClassificationModel

- (id)modelInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__CLSJunkClassificationModel_modelInfo__block_invoke;
  aBlock[3] = &unk_279A280B8;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_negativeNode, 1);
  v5[2](v5, self->_nonMemorableNode, 1);
  v5[2](v5, self->_poorQualityNode, 1);
  v5[2](v5, self->_textDocumentNode, 1);
  v5[2](v5, self->_tragicFailureNode, 1);
  v5[2](v5, self->_tragicFailureInternalNode, 0);
  v5[2](v5, self->_screenshotNode, 0);
  v5[2](v5, self->_badFramingNode, 0);
  v5[2](v5, self->_badLightingNode, 0);
  v5[2](v5, self->_blurryNode, 0);
  v5[2](v5, self->_foodOrDrinkNode, 0);
  v5[2](v5, self->_otherNode, 0);
  v5[2](v5, self->_medicalReferenceNode, 0);
  v5[2](v5, self->_negativeInternalNode, 0);
  v5[2](v5, self->_receiptOrDocumentNode, 0);
  v5[2](v5, self->_repairReferenceNode, 0);
  v5[2](v5, self->_shoppingReferenceNode, 0);
  v5[2](v5, self->_utilityReferenceNode, 0);
  v6 = v4;

  return v4;
}

void __39__CLSJunkClassificationModel_modelInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 signalInfoWithIsHierarchical:?];
  [v2 addObject:v3];
}

- (id)nodeForSignalIdentifier:(unint64_t)identifier
{
  switch(identifier)
  {
    case 0x7FFFFFED:
      textDocumentNode = self->_textDocumentNode;
      goto LABEL_21;
    case 0x7FFFFFEE:
      textDocumentNode = self->_tragicFailureInternalNode;
      goto LABEL_21;
    case 0x7FFFFFEF:
      textDocumentNode = self->_tragicFailureNode;
      goto LABEL_21;
    case 0x7FFFFFF0:
      textDocumentNode = self->_screenshotNode;
      goto LABEL_21;
    case 0x7FFFFFF1:
      textDocumentNode = self->_badFramingNode;
      goto LABEL_21;
    case 0x7FFFFFF2:
      textDocumentNode = self->_badLightingNode;
      goto LABEL_21;
    case 0x7FFFFFF3:
      textDocumentNode = self->_blurryNode;
      goto LABEL_21;
    case 0x7FFFFFF4:
      textDocumentNode = self->_foodOrDrinkNode;
      goto LABEL_21;
    case 0x7FFFFFF5:
      textDocumentNode = self->_otherNode;
      goto LABEL_21;
    case 0x7FFFFFF6:
      textDocumentNode = self->_medicalReferenceNode;
      goto LABEL_21;
    case 0x7FFFFFF7:
      textDocumentNode = self->_negativeInternalNode;
      goto LABEL_21;
    case 0x7FFFFFF8:
      textDocumentNode = self->_receiptOrDocumentNode;
      goto LABEL_21;
    case 0x7FFFFFF9:
      textDocumentNode = self->_repairReferenceNode;
      goto LABEL_21;
    case 0x7FFFFFFA:
      textDocumentNode = self->_shoppingReferenceNode;
      goto LABEL_21;
    case 0x7FFFFFFB:
      textDocumentNode = self->_utilityReferenceNode;
      goto LABEL_21;
    case 0x7FFFFFFC:
      textDocumentNode = self->_negativeNode;
      goto LABEL_21;
    case 0x7FFFFFFD:
      textDocumentNode = self->_nonMemorableNode;
      goto LABEL_21;
    case 0x7FFFFFFE:
      textDocumentNode = self->_poorQualityNode;
      goto LABEL_21;
    case 0x7FFFFFFF:
      textDocumentNode = self->_legacyNode;
LABEL_21:
      v5 = textDocumentNode;
      break;
    default:
      if ([(CLSJunkClassificationModel *)self isResponsibleForSignalIdentifier:identifier])
      {
        identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"Junk - Unknown (%X)", identifier];
        v5 = [[CLSSignalNode alloc] initWithIdentifier:identifier name:identifier operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
      }

      else
      {
        v5 = 0;
      }

      break;
  }

  return v5;
}

- (void)setupVersion86
{
  self->_version = 86;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147483644 name:@"Junk - Negative" operatingPoint:0.1 highPrecisionOperatingPoint:0.31 highRecallOperatingPoint:0.06];
  negativeNode = self->_negativeNode;
  self->_negativeNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147483645 name:@"Junk - Non Memorable" operatingPoint:0.44 highPrecisionOperatingPoint:0.55 highRecallOperatingPoint:0.32];
  nonMemorableNode = self->_nonMemorableNode;
  self->_nonMemorableNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147483646 name:@"Junk - Poor Quality" operatingPoint:0.54 highPrecisionOperatingPoint:0.83 highRecallOperatingPoint:0.21];
  poorQualityNode = self->_poorQualityNode;
  self->_poorQualityNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147483629 name:@"Junk - Text Document" operatingPoint:0.58 highPrecisionOperatingPoint:0.59 highRecallOperatingPoint:0.34];
  textDocumentNode = self->_textDocumentNode;
  self->_textDocumentNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147483631 name:@"Junk - Tragic Failure" operatingPoint:0.15 highPrecisionOperatingPoint:0.37 highRecallOperatingPoint:0.11];
  tragicFailureNode = self->_tragicFailureNode;
  self->_tragicFailureNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147483630 name:@"Junk - Tragic Failure Internal" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  tragicFailureInternalNode = self->_tragicFailureInternalNode;
  self->_tragicFailureInternalNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147483632 name:@"Junk - Screenshot" operatingPoint:0.47 highPrecisionOperatingPoint:0.58 highRecallOperatingPoint:0.18];
  screenshotNode = self->_screenshotNode;
  self->_screenshotNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147483633 name:@"Junk - Bad Framing" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  badFramingNode = self->_badFramingNode;
  self->_badFramingNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147483634 name:@"Junk - Bad Lighting" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  badLightingNode = self->_badLightingNode;
  self->_badLightingNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:2147483635 name:@"Junk - Blurry" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  blurryNode = self->_blurryNode;
  self->_blurryNode = v21;

  v23 = [[CLSSignalNode alloc] initWithIdentifier:2147483636 name:@"Junk - Food or Drink" operatingPoint:0.3 highPrecisionOperatingPoint:0.5 highRecallOperatingPoint:0.15];
  foodOrDrinkNode = self->_foodOrDrinkNode;
  self->_foodOrDrinkNode = v23;

  v25 = [[CLSSignalNode alloc] initWithIdentifier:2147483637 name:@"Junk - Other" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  otherNode = self->_otherNode;
  self->_otherNode = v25;

  v27 = [[CLSSignalNode alloc] initWithIdentifier:2147483638 name:@"Junk - Medical Reference" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  medicalReferenceNode = self->_medicalReferenceNode;
  self->_medicalReferenceNode = v27;

  v29 = [[CLSSignalNode alloc] initWithIdentifier:2147483639 name:@"Junk - Negative Internal" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  negativeInternalNode = self->_negativeInternalNode;
  self->_negativeInternalNode = v29;

  v31 = [[CLSSignalNode alloc] initWithIdentifier:2147483640 name:@"Junk - Receipt or Document" operatingPoint:0.44 highPrecisionOperatingPoint:0.58 highRecallOperatingPoint:0.4];
  receiptOrDocumentNode = self->_receiptOrDocumentNode;
  self->_receiptOrDocumentNode = v31;

  v33 = [[CLSSignalNode alloc] initWithIdentifier:2147483641 name:@"Junk - Repair Reference" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  repairReferenceNode = self->_repairReferenceNode;
  self->_repairReferenceNode = v33;

  v35 = [[CLSSignalNode alloc] initWithIdentifier:2147483642 name:@"Junk - Shopping Reference" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  shoppingReferenceNode = self->_shoppingReferenceNode;
  self->_shoppingReferenceNode = v35;

  v37 = [[CLSSignalNode alloc] initWithIdentifier:2147483643 name:@"Junk - Utility Reference" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  utilityReferenceNode = self->_utilityReferenceNode;
  self->_utilityReferenceNode = v37;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion81
{
  self->_version = 81;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147483644 name:@"Junk - Negative" operatingPoint:0.2 highPrecisionOperatingPoint:0.3 highRecallOperatingPoint:0.09];
  negativeNode = self->_negativeNode;
  self->_negativeNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147483645 name:@"Junk - Non Memorable" operatingPoint:0.48 highPrecisionOperatingPoint:0.65 highRecallOperatingPoint:0.27];
  nonMemorableNode = self->_nonMemorableNode;
  self->_nonMemorableNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147483646 name:@"Junk - Poor Quality" operatingPoint:0.65 highPrecisionOperatingPoint:0.82 highRecallOperatingPoint:0.33];
  poorQualityNode = self->_poorQualityNode;
  self->_poorQualityNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147483629 name:@"Junk - Text Document" operatingPoint:0.57 highPrecisionOperatingPoint:0.77 highRecallOperatingPoint:0.3];
  textDocumentNode = self->_textDocumentNode;
  self->_textDocumentNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147483631 name:@"Junk - Tragic Failure" operatingPoint:0.07 highPrecisionOperatingPoint:0.13 highRecallOperatingPoint:0.05];
  tragicFailureNode = self->_tragicFailureNode;
  self->_tragicFailureNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147483630 name:@"Junk - Tragic Failure Internal" operatingPoint:0.07 highPrecisionOperatingPoint:0.13 highRecallOperatingPoint:0.05];
  tragicFailureInternalNode = self->_tragicFailureInternalNode;
  self->_tragicFailureInternalNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147483632 name:@"Junk - Screenshot" operatingPoint:0.38 highPrecisionOperatingPoint:0.62 highRecallOperatingPoint:0.33];
  screenshotNode = self->_screenshotNode;
  self->_screenshotNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147483633 name:@"Junk - Bad Framing" operatingPoint:0.15 highPrecisionOperatingPoint:0.34 highRecallOperatingPoint:0.1];
  badFramingNode = self->_badFramingNode;
  self->_badFramingNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147483634 name:@"Junk - Bad Lighting" operatingPoint:0.16 highPrecisionOperatingPoint:0.61 highRecallOperatingPoint:0.08];
  badLightingNode = self->_badLightingNode;
  self->_badLightingNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:2147483635 name:@"Junk - Blurry" operatingPoint:0.22 highPrecisionOperatingPoint:0.51 highRecallOperatingPoint:0.2];
  blurryNode = self->_blurryNode;
  self->_blurryNode = v21;

  v23 = [[CLSSignalNode alloc] initWithIdentifier:2147483636 name:@"Junk - Food or Drink" operatingPoint:0.25 highPrecisionOperatingPoint:0.42 highRecallOperatingPoint:0.12];
  foodOrDrinkNode = self->_foodOrDrinkNode;
  self->_foodOrDrinkNode = v23;

  v25 = [[CLSSignalNode alloc] initWithIdentifier:2147483637 name:@"Junk - Other" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  otherNode = self->_otherNode;
  self->_otherNode = v25;

  v27 = [[CLSSignalNode alloc] initWithIdentifier:2147483638 name:@"Junk - Medical Reference" operatingPoint:0.14 highPrecisionOperatingPoint:0.32 highRecallOperatingPoint:0.08];
  medicalReferenceNode = self->_medicalReferenceNode;
  self->_medicalReferenceNode = v27;

  v29 = [[CLSSignalNode alloc] initWithIdentifier:2147483639 name:@"Junk - Negative Internal" operatingPoint:0.18 highPrecisionOperatingPoint:0.31 highRecallOperatingPoint:0.12];
  negativeInternalNode = self->_negativeInternalNode;
  self->_negativeInternalNode = v29;

  v31 = [[CLSSignalNode alloc] initWithIdentifier:2147483640 name:@"Junk - Receipt or Document" operatingPoint:0.46 highPrecisionOperatingPoint:0.67 highRecallOperatingPoint:0.22];
  receiptOrDocumentNode = self->_receiptOrDocumentNode;
  self->_receiptOrDocumentNode = v31;

  v33 = [[CLSSignalNode alloc] initWithIdentifier:2147483641 name:@"Junk - Repair Reference" operatingPoint:0.12 highPrecisionOperatingPoint:0.24 highRecallOperatingPoint:0.06];
  repairReferenceNode = self->_repairReferenceNode;
  self->_repairReferenceNode = v33;

  v35 = [[CLSSignalNode alloc] initWithIdentifier:2147483642 name:@"Junk - Shopping Reference" operatingPoint:0.26 highPrecisionOperatingPoint:0.44 highRecallOperatingPoint:0.11];
  shoppingReferenceNode = self->_shoppingReferenceNode;
  self->_shoppingReferenceNode = v35;

  v37 = [[CLSSignalNode alloc] initWithIdentifier:2147483643 name:@"Junk - Utility Reference" operatingPoint:0.41 highPrecisionOperatingPoint:0.64 highRecallOperatingPoint:0.21];
  utilityReferenceNode = self->_utilityReferenceNode;
  self->_utilityReferenceNode = v37;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion40
{
  self->_version = 40;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147483644 name:@"Junk - Negative" operatingPoint:0.04 highPrecisionOperatingPoint:0.2 highRecallOperatingPoint:?];
  negativeNode = self->_negativeNode;
  self->_negativeNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147483645 name:@"Junk - Non Memorable" operatingPoint:0.83 highPrecisionOperatingPoint:0.94 highRecallOperatingPoint:0.58];
  nonMemorableNode = self->_nonMemorableNode;
  self->_nonMemorableNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147483646 name:@"Junk - Poor Quality" operatingPoint:0.76 highPrecisionOperatingPoint:0.85 highRecallOperatingPoint:0.26];
  poorQualityNode = self->_poorQualityNode;
  self->_poorQualityNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147483629 name:@"Junk - Text Document" operatingPoint:0.81 highPrecisionOperatingPoint:0.86 highRecallOperatingPoint:0.51];
  textDocumentNode = self->_textDocumentNode;
  self->_textDocumentNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147483631 name:@"Junk - Tragic Failure" operatingPoint:0.11 highPrecisionOperatingPoint:0.34 highRecallOperatingPoint:0.05];
  tragicFailureNode = self->_tragicFailureNode;
  self->_tragicFailureNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147483630 name:@"Junk - Tragic Failure Internal" operatingPoint:0.09 highPrecisionOperatingPoint:0.21 highRecallOperatingPoint:0.04];
  tragicFailureInternalNode = self->_tragicFailureInternalNode;
  self->_tragicFailureInternalNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147483632 name:@"Junk - Screenshot" operatingPoint:0.47 highPrecisionOperatingPoint:0.91 highRecallOperatingPoint:0.18];
  screenshotNode = self->_screenshotNode;
  self->_screenshotNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147483633 name:@"Junk - Bad Framing" operatingPoint:0.12 highPrecisionOperatingPoint:0.19 highRecallOperatingPoint:0.08];
  badFramingNode = self->_badFramingNode;
  self->_badFramingNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147483634 name:@"Junk - Bad Lighting" operatingPoint:0.28 highPrecisionOperatingPoint:0.56 highRecallOperatingPoint:0.14];
  badLightingNode = self->_badLightingNode;
  self->_badLightingNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:2147483635 name:@"Junk - Blurry" operatingPoint:0.41 highPrecisionOperatingPoint:0.69 highRecallOperatingPoint:0.37];
  blurryNode = self->_blurryNode;
  self->_blurryNode = v21;

  v23 = [[CLSSignalNode alloc] initWithIdentifier:2147483636 name:@"Junk - Food or Drink" operatingPoint:0.07 highPrecisionOperatingPoint:0.3 highRecallOperatingPoint:0.03];
  foodOrDrinkNode = self->_foodOrDrinkNode;
  self->_foodOrDrinkNode = v23;

  v25 = [[CLSSignalNode alloc] initWithIdentifier:2147483637 name:@"Junk - Other" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  otherNode = self->_otherNode;
  self->_otherNode = v25;

  v27 = [[CLSSignalNode alloc] initWithIdentifier:2147483638 name:@"Junk - Medical Reference" operatingPoint:0.19 highPrecisionOperatingPoint:0.25 highRecallOperatingPoint:0.07];
  medicalReferenceNode = self->_medicalReferenceNode;
  self->_medicalReferenceNode = v27;

  v29 = [[CLSSignalNode alloc] initWithIdentifier:2147483639 name:@"Junk - Negative Internal" operatingPoint:0.04 highPrecisionOperatingPoint:0.12 highRecallOperatingPoint:0.02];
  negativeInternalNode = self->_negativeInternalNode;
  self->_negativeInternalNode = v29;

  v31 = [[CLSSignalNode alloc] initWithIdentifier:2147483640 name:@"Junk - Receipt or Document" operatingPoint:0.69 highPrecisionOperatingPoint:0.8 highRecallOperatingPoint:0.3];
  receiptOrDocumentNode = self->_receiptOrDocumentNode;
  self->_receiptOrDocumentNode = v31;

  v33 = [[CLSSignalNode alloc] initWithIdentifier:2147483641 name:@"Junk - Repair Reference" operatingPoint:0.15 highPrecisionOperatingPoint:0.3 highRecallOperatingPoint:0.05];
  repairReferenceNode = self->_repairReferenceNode;
  self->_repairReferenceNode = v33;

  v35 = [[CLSSignalNode alloc] initWithIdentifier:2147483642 name:@"Junk - Shopping Reference" operatingPoint:0.52 highPrecisionOperatingPoint:0.57 highRecallOperatingPoint:0.21];
  shoppingReferenceNode = self->_shoppingReferenceNode;
  self->_shoppingReferenceNode = v35;

  v37 = [[CLSSignalNode alloc] initWithIdentifier:2147483643 name:@"Junk - Utility Reference" operatingPoint:0.39 highPrecisionOperatingPoint:0.7 highRecallOperatingPoint:0.27];
  utilityReferenceNode = self->_utilityReferenceNode;
  self->_utilityReferenceNode = v37;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion32
{
  [(CLSJunkClassificationModel *)self setupVersion31];
  self->_version = 32;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147483629 name:@"Junk - Text Document" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  textDocumentNode = self->_textDocumentNode;
  self->_textDocumentNode = v3;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion31
{
  self->_version = 31;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147483644 name:@"Junk - Negative" operatingPoint:0.54 highPrecisionOperatingPoint:0.54 highRecallOperatingPoint:0.54];
  negativeNode = self->_negativeNode;
  self->_negativeNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147483645 name:@"Junk - Non Memorable" operatingPoint:0.675 highPrecisionOperatingPoint:0.675 highRecallOperatingPoint:0.675];
  nonMemorableNode = self->_nonMemorableNode;
  self->_nonMemorableNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147483646 name:@"Junk - Poor Quality" operatingPoint:0.62 highPrecisionOperatingPoint:0.62 highRecallOperatingPoint:0.62];
  poorQualityNode = self->_poorQualityNode;
  self->_poorQualityNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:2147483629 name:@"Junk - Text Document" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  textDocumentNode = self->_textDocumentNode;
  self->_textDocumentNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:2147483631 name:@"Junk - Tragic Failure" operatingPoint:0.92 highPrecisionOperatingPoint:0.92 highRecallOperatingPoint:0.92];
  tragicFailureNode = self->_tragicFailureNode;
  self->_tragicFailureNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:2147483630 name:@"Junk - Tragic Failure Internal" operatingPoint:0.77 highPrecisionOperatingPoint:0.77 highRecallOperatingPoint:0.77];
  tragicFailureInternalNode = self->_tragicFailureInternalNode;
  self->_tragicFailureInternalNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:2147483632 name:@"Junk - Screenshot" operatingPoint:0.84 highPrecisionOperatingPoint:0.84 highRecallOperatingPoint:0.84];
  screenshotNode = self->_screenshotNode;
  self->_screenshotNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:2147483633 name:@"Junk - Bad Framing" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  badFramingNode = self->_badFramingNode;
  self->_badFramingNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:2147483634 name:@"Junk - Bad Lighting" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  badLightingNode = self->_badLightingNode;
  self->_badLightingNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:2147483635 name:@"Junk - Blurry" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  blurryNode = self->_blurryNode;
  self->_blurryNode = v21;

  v23 = [[CLSSignalNode alloc] initWithIdentifier:2147483636 name:@"Junk - Food or Drink" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  foodOrDrinkNode = self->_foodOrDrinkNode;
  self->_foodOrDrinkNode = v23;

  v25 = [[CLSSignalNode alloc] initWithIdentifier:2147483637 name:@"Junk - Other" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  otherNode = self->_otherNode;
  self->_otherNode = v25;

  v27 = [[CLSSignalNode alloc] initWithIdentifier:2147483638 name:@"Junk - Medical Reference" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  medicalReferenceNode = self->_medicalReferenceNode;
  self->_medicalReferenceNode = v27;

  v29 = [[CLSSignalNode alloc] initWithIdentifier:2147483639 name:@"Junk - Negative Internal" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  negativeInternalNode = self->_negativeInternalNode;
  self->_negativeInternalNode = v29;

  v31 = [[CLSSignalNode alloc] initWithIdentifier:2147483640 name:@"Junk - Receipt or Document" operatingPoint:0.71 highPrecisionOperatingPoint:0.71 highRecallOperatingPoint:0.71];
  receiptOrDocumentNode = self->_receiptOrDocumentNode;
  self->_receiptOrDocumentNode = v31;

  v33 = [[CLSSignalNode alloc] initWithIdentifier:2147483641 name:@"Junk - Repair Reference" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  repairReferenceNode = self->_repairReferenceNode;
  self->_repairReferenceNode = v33;

  v35 = [[CLSSignalNode alloc] initWithIdentifier:2147483642 name:@"Junk - Shopping Reference" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  shoppingReferenceNode = self->_shoppingReferenceNode;
  self->_shoppingReferenceNode = v35;

  v37 = [[CLSSignalNode alloc] initWithIdentifier:2147483643 name:@"Junk - Utility Reference" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  utilityReferenceNode = self->_utilityReferenceNode;
  self->_utilityReferenceNode = v37;

  v39 = [[CLSSignalNode alloc] initWithIdentifier:0x7FFFFFFFLL name:@"Junk - Legacy" operatingPoint:0.1 highPrecisionOperatingPoint:0.1 highRecallOperatingPoint:0.1];
  legacyNode = self->_legacyNode;
  self->_legacyNode = v39;

  MEMORY[0x2821F96F8]();
}

- (CLSJunkClassificationModel)initWithSceneAnalysisVersion:(unint64_t)version
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSJunkClassificationModel;
  v4 = [(CLSJunkClassificationModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (version < 0x56)
    {
      if (version < 0x51)
      {
        if (version < 0x28)
        {
          if (version < 0x20)
          {
            if (version == 31)
            {
              [(CLSJunkClassificationModel *)v4 setupVersion31];
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v6 = objc_opt_class();
                *buf = 67109378;
                versionCopy = version;
                v12 = 2112;
                v13 = v6;
                _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported version %d in %@", buf, 0x12u);
              }

              v5 = 0;
            }
          }

          else
          {
            [(CLSJunkClassificationModel *)v4 setupVersion32];
          }
        }

        else
        {
          [(CLSJunkClassificationModel *)v4 setupVersion40];
        }
      }

      else
      {
        [(CLSJunkClassificationModel *)v4 setupVersion81];
      }
    }

    else
    {
      [(CLSJunkClassificationModel *)v4 setupVersion86];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version
{
  v3 = 81;
  v4 = 40;
  v5 = 32;
  if (version == 31)
  {
    v6 = 31;
  }

  else
  {
    v6 = 0;
  }

  if (version <= 0x1F)
  {
    v5 = v6;
  }

  if (version <= 0x27)
  {
    v4 = v5;
  }

  if (version <= 0x50)
  {
    v3 = v4;
  }

  if (version <= 0x55)
  {
    return v3;
  }

  else
  {
    return 86;
  }
}

@end