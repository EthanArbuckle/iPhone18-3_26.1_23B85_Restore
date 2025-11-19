@interface VKCTextDataDetectorElement
+ (id)dataDetectorElementFromCROutputRegion:(id)a3 parentDocument:(id)a4;
- (CRDataDetectorsOutputRegion)ddOutputRegion;
- (VKCTextDataDetectorElement)initWithCROutputRegion:(id)a3 parentDocument:(id)a4;
- (VKCTextDataDetectorElement)initWithScannerResult:(id)a3;
- (_NSRange)characterRange;
- (id)boundingQuads;
- (id)children;
- (id)debugMenu;
- (unint64_t)dataType;
@end

@implementation VKCTextDataDetectorElement

+ (id)dataDetectorElementFromCROutputRegion:(id)a3 parentDocument:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[VKCTextDataDetectorElement alloc] initWithCROutputRegion:v6 parentDocument:v5];

  return v7;
}

- (VKCTextDataDetectorElement)initWithCROutputRegion:(id)a3 parentDocument:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VKCTextDataDetectorElement;
  v8 = [(VKCBaseDataDetectorElement *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(VKCBaseElement *)v8 setParentCRDocument:v7];
    [(VKCBaseElement *)v9 setCrOutputRegion:v6];
    v10 = [(VKCTextDataDetectorElement *)v9 ddOutputRegion];
    v11 = [v10 ddResult];
    scannerResult = v9->_scannerResult;
    v9->_scannerResult = v11;

    v9->_dataDetectorTypes = [(VKCBaseDataDetectorElement *)VKCTextDataDetectorElement dataDetectorTypesForScannerResult:v9->_scannerResult];
  }

  return v9;
}

- (VKCTextDataDetectorElement)initWithScannerResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VKCTextDataDetectorElement;
  v6 = [(VKCBaseDataDetectorElement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scannerResult, a3);
    v7->_dataDetectorTypes = [(VKCBaseDataDetectorElement *)VKCTextDataDetectorElement dataDetectorTypesForScannerResult:v7->_scannerResult];
  }

  return v7;
}

- (CRDataDetectorsOutputRegion)ddOutputRegion
{
  v3 = objc_opt_class();
  v4 = [(VKCBaseElement *)self crOutputRegion];
  v5 = VKCheckedDynamicCast(v3, v4);

  return v5;
}

- (unint64_t)dataType
{
  v2 = [(VKCTextDataDetectorElement *)self ddOutputRegion];
  v3 = [v2 dataType];

  return v3;
}

- (_NSRange)characterRange
{
  v2 = [(VKCTextDataDetectorElement *)self scannerResult];
  v3 = [v2 urlificationRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)boundingQuads
{
  boundingQuads = self->_boundingQuads;
  if (!boundingQuads)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(VKCBaseElement *)self parentCRDocument];
    v6 = [(VKCTextDataDetectorElement *)self characterRange];
    v8 = [v5 outputRegionWithContentsOfCharacterRange:{v6, v7}];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__VKCTextDataDetectorElement_boundingQuads__block_invoke;
    v13[3] = &unk_1E7BE6D48;
    v14 = v4;
    v9 = v4;
    [v8 enumerateContentsWithTypes:8 usingBlock:v13];
    v10 = [v9 copy];
    v11 = self->_boundingQuads;
    self->_boundingQuads = v10;

    boundingQuads = self->_boundingQuads;
  }

  return boundingQuads;
}

void __43__VKCTextDataDetectorElement_boundingQuads__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 boundingQuad];
  v3 = [v4 vkQuad];
  [v2 addObject:v3];
}

- (id)children
{
  [(VKCTextDataDetectorElement *)self createChildrenIfNecessary];

  return [(VKCTextDataDetectorElement *)self _children];
}

- (id)debugMenu
{
  v3 = [(VKCBaseElement *)self parentCRDocument];
  v4 = [v3 text];
  v5 = [(VKCTextDataDetectorElement *)self characterRange];
  v7 = [v4 substringWithRange:{v5, v6}];

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__16;
  v42 = __Block_byref_object_dispose__16;
  v43 = 0;
  if (vk_isSeedBuild())
  {
    v8 = 40;
  }

  else
  {
    v8 = 20;
  }

  v9 = [v7 vk_substringToIndex:v8];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (vk_isSeedBuild())
  {
    v11 = 60;
  }

  else
  {
    v11 = 40;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v7 vk_substringToIndex:v11];
  v14 = [v12 stringWithFormat:@"%@", v13];
  v15 = v39[5];
  v39[5] = v14;

  v16 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Text" subtitle:v39[5]];
  [v10 addObject:v16];

  v17 = [objc_opt_class() stringArrayForVKDataDetectorTypes:{-[VKCTextDataDetectorElement dataDetectorTypes](self, "dataDetectorTypes")}];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __39__VKCTextDataDetectorElement_debugMenu__block_invoke;
  v35[3] = &unk_1E7BE5C48;
  v37 = &v38;
  v18 = v10;
  v36 = v18;
  [v17 enumerateObjectsUsingBlock:v35];
  v19 = MEMORY[0x1E696AEC0];
  v20 = [(VKCTextDataDetectorElement *)self characterRange];
  v22 = VKMUIStringForRange(v20, v21);
  v23 = [v19 stringWithFormat:@"%@", v22];
  v24 = v39[5];
  v39[5] = v23;

  v25 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Range" subtitle:v39[5]];
  [v18 addObject:v25];

  v26 = [(VKCTextDataDetectorElement *)self boundingQuads];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __39__VKCTextDataDetectorElement_debugMenu__block_invoke_2;
  v32[3] = &unk_1E7BE5C70;
  v34 = &v38;
  v27 = v18;
  v33 = v27;
  [v26 enumerateObjectsUsingBlock:v32];

  v28 = MEMORY[0x1E69DCC60];
  v29 = [v17 firstObject];
  v30 = [v28 vk_menuWithItems:v27 title:v29 subtitle:v9];

  _Block_object_dispose(&v38, 8);

  return v30;
}

void __39__VKCTextDataDetectorElement_debugMenu__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Type" subtitle:*(*(*(a1 + 40) + 8) + 40)];
  [v6 addObject:v7];
}

void __39__VKCTextDataDetectorElement_debugMenu__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a2 summaryDescription];
  v5 = [v3 stringWithFormat:@"%@", v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Quad" subtitle:*(*(*(a1 + 40) + 8) + 40)];
  [v8 addObject:v9];
}

@end