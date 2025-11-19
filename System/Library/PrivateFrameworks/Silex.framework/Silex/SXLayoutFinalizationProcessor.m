@interface SXLayoutFinalizationProcessor
- (SXLayoutFinalizationProcessor)initWithUnitConverterFactory:(id)a3;
- (void)finalizeLayoutBlueprint:(id)a3 origin:(CGPoint)a4 absoluteOrigin:(CGPoint)a5;
@end

@implementation SXLayoutFinalizationProcessor

- (SXLayoutFinalizationProcessor)initWithUnitConverterFactory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXLayoutFinalizationProcessor;
  v6 = [(SXLayoutFinalizationProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unitConverterFactory, a3);
  }

  return v7;
}

- (void)finalizeLayoutBlueprint:(id)a3 origin:(CGPoint)a4 absoluteOrigin:(CGPoint)a5
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [v6 componentIdentifiers];
  v7 = [obj countByEnumeratingWithState:&v81 objects:v85 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v82;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v82 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [v6 componentBlueprintForComponentIdentifier:*(*(&v81 + 1) + 8 * i)];
        unitConverterFactory = self->_unitConverterFactory;
        [v11 frame];
        Width = CGRectGetWidth(v87);
        [v6 blueprintSize];
        v15 = v14;
        v16 = [v6 layoutOptions];
        v17 = [(SXUnitConverterFactory *)unitConverterFactory createUnitConverterWithComponentWidth:v16 parentWidth:Width layoutOptions:v15];

        v18 = [v11 componentSizer];
        [v18 layoutMarginsWithUnitConverter:v17];
        v20 = v19;
        v75 = v19;
        v76 = v21;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v27 = [v11 componentSizer];
        [v27 contentInsetsWithUnitConverter:v17];
        v29 = v28;
        v71 = v30;
        v72 = v28;
        v31 = v30;
        v33 = v32;
        v73 = v34;
        v74 = v32;
        v35 = v34;

        v36 = [v11 componentSizer];
        [v36 bordersInsetsWithUnitConverter:v17];
        v77 = v37;
        v78 = v38;
        v79 = v39;
        v80 = v40;

        v41 = v29 - v20;
        v42 = v31 - v22;
        v70 = v33 - v24;
        v43 = v24;
        v67 = v24;
        v68 = v26;
        v69 = v35 - v26;
        v44 = v26;
        [v11 frame];
        v89 = CGRectOffset(v88, a5.x, a5.y);
        y = v89.origin.y;
        x = v89.origin.x;
        height = v89.size.height;
        v64 = v89.size.width;
        [v11 frame];
        v91 = CGRectOffset(v90, a4.x, a4.y);
        v61 = v91.origin.y;
        v62 = v91.origin.x;
        v45 = v91.size.width;
        v46 = v91.size.height;
        v47 = v91.size.width - (v76 + v44) - (-v80 - v79);
        v48 = v91.size.height - (v75 + v43) - (-v78 - v77);
        [v11 setAbsoluteFrame:{x, y, v64, height}];
        [v11 setComponentViewFrame:{v62, v61, v45, v46}];
        [v11 setContentViewFrame:{v79 + 0.0, v77 + 0.0, v47 - (v79 + v80), v48 - (v77 + v78)}];
        [v11 setContentFrame:{v42 + 0.0, v41 + 0.0, v47 - (v79 + v80) - (v42 + v69), v48 - (v77 + v78) - (v41 + v70)}];
        [v11 setLayoutMargins:{v75, v76, v67, v68}];
        [v11 setContentInsets:{v72, v71, v74, v73}];
        [v11 setBackgroundViewFrame:{v76 + 0.0 - v79, v75 + 0.0 - v77, v47, v48}];
        [v11 setBorderInsets:{v77, v79, v78, v80}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 frame];
          v50 = v71 + a5.x + v49;
          [v11 frame];
          v52 = v72 + a5.y + v51;
          v53 = [v11 layoutBlueprint];
          [(SXLayoutFinalizationProcessor *)self finalizeLayoutBlueprint:v53 origin:v42 absoluteOrigin:v41, v50, v52];
        }

        v54 = MEMORY[0x1E695DF90];
        v55 = [v11 componentSizer];
        v56 = [v55 infoForRendering];
        v57 = [v54 dictionaryWithDictionary:v56];

        [v57 setObject:v17 forKey:@"unitConverter"];
        [v11 storeInformationForRenderingPhase:v57];
      }

      v8 = [obj countByEnumeratingWithState:&v81 objects:v85 count:16];
    }

    while (v8);
  }
}

@end