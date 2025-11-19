@interface WTFinaleTextEffect
@end

@implementation WTFinaleTextEffect

void __40___WTFinaleTextEffect_updateEffectWith___block_invoke_2(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) effectView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) rootLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v12 = [*(a1 + 32) textContentLayer];
  v13 = [v12 sublayers];
  v14 = [v13 copy];

  v15 = [v14 countByEnumeratingWithState:&v93 objects:v98 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v94;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v94 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v93 + 1) + 8 * i) removeFromSuperlayer];
      }

      v16 = [v14 countByEnumeratingWithState:&v93 objects:v98 count:16];
    }

    while (v16);
  }

  Mutable = CGPathCreateMutable();
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v20 = *(a1 + 40);
  v21 = [v20 countByEnumeratingWithState:&v89 objects:v97 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v25 = *(MEMORY[0x1E695F058] + 16);
    v26 = *(MEMORY[0x1E695F058] + 24);
    v27 = *v90;
    height = v26;
    width = v25;
    y = v24;
    x = *MEMORY[0x1E695F058];
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v90 != v27)
        {
          objc_enumerationMutation(v20);
        }

        v33 = *(*(&v89 + 1) + 8 * j);
        v34 = [v33 layerWithContents];
        v35 = [*(a1 + 32) textContentLayer];
        [v35 addSublayer:v34];

        v36 = [*(a1 + 40) firstObject];

        if (v33 == v36)
        {
          v47 = [v33 clippingPath];
LABEL_20:
          CGPathAddPath(Mutable, 0, v47);
          goto LABEL_22;
        }

        v37 = [*(a1 + 40) lastObject];

        if (v33 == v37)
        {
          CGPathAddPath(Mutable, 0, [v33 clippingPath]);
          v101.origin.x = x;
          v101.origin.y = y;
          v101.size.width = width;
          v101.size.height = height;
          v106.origin.x = v23;
          v106.origin.y = v24;
          v106.size.width = v25;
          v106.size.height = v26;
          if (CGRectEqualToRect(v101, v106))
          {
            goto LABEL_22;
          }

          v102.origin.x = x;
          v102.origin.y = y;
          v102.size.width = width;
          v102.size.height = height;
          v47 = CGPathCreateWithRect(v102, 0);
          goto LABEL_20;
        }

        v100.origin.x = x;
        v100.origin.y = y;
        v100.size.width = width;
        v100.size.height = height;
        v105.origin.x = v23;
        v105.origin.y = v24;
        v105.size.width = v25;
        v105.size.height = v26;
        v38 = CGRectEqualToRect(v100, v105);
        [v33 presentationFrame];
        v43 = v39;
        v44 = v40;
        v45 = v41;
        v46 = v42;
        if (v38)
        {
          height = v42;
          width = v41;
          y = v40;
          x = v39;
        }

        else
        {
          v103.origin.x = x;
          v103.origin.y = y;
          v103.size.width = width;
          v103.size.height = height;
          v104 = CGRectUnion(v103, *&v43);
          x = v104.origin.x;
          y = v104.origin.y;
          width = v104.size.width;
          height = v104.size.height;
        }

LABEL_22:
      }

      v22 = [v20 countByEnumeratingWithState:&v89 objects:v97 count:16];
    }

    while (v22);
  }

  v48 = [*(a1 + 32) maskLayer];
  [v48 setPath:Mutable];

  CGPathRelease(Mutable);
  v49 = [*(a1 + 32) effectView];
  [v49 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = [*(a1 + 32) gradientHostLayer];
  [v58 setFrame:{v51, v53, v55, v57}];

  v59 = [*(a1 + 32) effectView];
  [v59 bounds];
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = [*(a1 + 32) gradientLayer];
  [v68 setFrame:{v61, v63, v65, v67}];

  v69 = [*(a1 + 32) effectView];
  [v69 bounds];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = [*(a1 + 32) maskLayer];
  [v78 setFrame:{v71, v73, v75, v77}];

  v79 = [*(a1 + 32) effectView];
  [v79 bounds];
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88 = [*(a1 + 32) textContentLayer];
  [v88 setFrame:{v81, v83, v85, v87}];
}

void __29___WTFinaleTextEffect__sweep__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) gradientLayer];
  [v5 setFrame:{v1, v2, v3, v4}];
}

@end