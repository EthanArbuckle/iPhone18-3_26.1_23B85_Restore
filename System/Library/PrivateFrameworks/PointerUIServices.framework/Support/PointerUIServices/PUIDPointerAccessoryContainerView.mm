@interface PUIDPointerAccessoryContainerView
- (void)_recordAccessory:(id)a3 withShapeView:(id)a4;
- (void)_removeRecordOfAccessory:(id)a3;
- (void)setAccessories:(id)a3 animated:(BOOL)a4;
@end

@implementation PUIDPointerAccessoryContainerView

- (void)setAccessories:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v47 = v6;
    v56 = self;
    objc_storeStrong(&self->_accessories, a3);
    if (!self->_shapeViewsByPosition && [v6 count])
    {
      v7 = +[NSMutableDictionary dictionary];
      shapeViewsByPosition = self->_shapeViewsByPosition;
      self->_shapeViewsByPosition = v7;

      v9 = +[NSMutableDictionary dictionary];
      shapeViewsByAccessory = self->_shapeViewsByAccessory;
      self->_shapeViewsByAccessory = v9;
    }

    v11 = +[NSMutableDictionary dictionary];
    v12 = [(NSMutableDictionary *)self->_shapeViewsByAccessory mutableCopy];
    objc_initWeak(&location, self);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_10001AA40;
    v75[3] = &unk_100049398;
    objc_copyWeak(&v78, &location);
    v48 = v12;
    v76 = v48;
    v51 = v11;
    v77 = v51;
    v54 = objc_retainBlock(v75);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v13 = v47;
    v14 = [v13 countByEnumeratingWithState:&v71 objects:v85 count:16];
    if (v14)
    {
      v15 = *v72;
      do
      {
        v16 = 0;
        do
        {
          if (*v72 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v71 + 1) + 8 * v16);
          v18 = [(PUIDPointerAccessoryContainerView *)v56 _visibleShapeViewForAccessory:v17];
          if (v18)
          {
            v19 = v17;
LABEL_14:
            (v54[2])(v54, v18, v17, v19);
            goto LABEL_15;
          }

          v20 = [v17 positionRecordKey];
          v18 = [(PUIDPointerAccessoryContainerView *)v56 _visibleShapeViewAtPosition:v20];

          if (v18)
          {
            v21 = [(NSMutableDictionary *)v56->_shapeViewsByAccessory allKeysForObject:v18];
            v19 = [v21 firstObject];

            goto LABEL_14;
          }

          v19 = 0;
LABEL_15:

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v22 = [v13 countByEnumeratingWithState:&v71 objects:v85 count:16];
        v14 = v22;
      }

      while (v22);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v13;
    v52 = [obj countByEnumeratingWithState:&v67 objects:v84 count:16];
    if (!v52)
    {
      goto LABEL_46;
    }

    v50 = *v68;
LABEL_21:
    v55 = 0;
    while (1)
    {
      if (*v68 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v57 = *(*(&v67 + 1) + 8 * v55);
      v23 = [v51 objectForKeyedSubscript:?];

      if (v23)
      {
        goto LABEL_44;
      }

      v53 = +[PUIDPointerDomain rootSettings];
      if (![v53 allowPositionToPositionAnimations])
      {
        goto LABEL_41;
      }

      v66 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      v24 = [v48 allKeys];
      v25 = 0;
      v26 = [v24 countByEnumeratingWithState:&v63 objects:v83 count:16];
      if (v26)
      {
        v27 = *v64;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v64 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v63 + 1) + 8 * i);
            v30 = v57;
            v31 = [v29 shape];
            v32 = [v30 shape];
            v33 = [v31 isEqual:v32];

            if (v33)
            {
              [v29 angle];
              [v30 angle];
            }

            if (BSFloatLessThanFloat())
            {
              v34 = v29;

              v25 = v34;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v63 objects:v83 count:16];
        }

        while (v26);
      }

      [v53 positionToPositionAnimationThreshold];
      BSDegreesToRadians();
      if (!BSFloatLessThanOrEqualToFloat())
      {
        break;
      }

      v35 = [v48 objectForKeyedSubscript:v25];
      if (!v35)
      {
        goto LABEL_42;
      }

LABEL_43:
      (v54[2])(v54, v35, v57, v25);

LABEL_44:
      if (++v55 == v52)
      {
        v52 = [obj countByEnumeratingWithState:&v67 objects:v84 count:16];
        if (!v52)
        {
LABEL_46:

          v43 = +[PUIDPointerDomain rootSettings];
          v44 = [v43 pointerAccessoryAnimationSettings];

          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_10001ABD8;
          v61[3] = &unk_1000493C0;
          v45 = v44;
          v62 = v45;
          [v51 enumerateKeysAndObjectsUsingBlock:v61];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_10001AD10;
          v58[3] = &unk_100049410;
          v46 = v45;
          v59 = v46;
          v60 = v56;
          [v48 enumerateKeysAndObjectsUsingBlock:v58];

          objc_destroyWeak(&v78);
          objc_destroyWeak(&location);

          v6 = v47;
          goto LABEL_47;
        }

        goto LABEL_21;
      }
    }

LABEL_41:
    v25 = 0;
LABEL_42:
    v36 = v57;
    v37 = [PUIDPointerShapeView alloc];
    v38 = [v36 shape];
    [v38 bounds];
    v39 = [(PUIDPointerShapeView *)v37 initWithFrame:?];

    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_10001B0FC;
    v80[3] = &unk_100048A28;
    v40 = v39;
    v81 = v40;
    v82 = v36;
    v41 = v36;
    [UIView performWithoutAnimation:v80];
    v42 = v82;
    v35 = v40;

    goto LABEL_43;
  }

LABEL_47:
}

- (void)_recordAccessory:(id)a3 withShapeView:(id)a4
{
  shapeViewsByAccessory = self->_shapeViewsByAccessory;
  v7 = a4;
  v8 = a3;
  [(NSMutableDictionary *)shapeViewsByAccessory setObject:v7 forKeyedSubscript:v8];
  shapeViewsByPosition = self->_shapeViewsByPosition;
  v10 = [v8 positionRecordKey];

  [(NSMutableDictionary *)shapeViewsByPosition setObject:v7 forKeyedSubscript:v10];
}

- (void)_removeRecordOfAccessory:(id)a3
{
  shapeViewsByAccessory = self->_shapeViewsByAccessory;
  v5 = a3;
  [(NSMutableDictionary *)shapeViewsByAccessory removeObjectForKey:v5];
  shapeViewsByPosition = self->_shapeViewsByPosition;
  v7 = [v5 positionRecordKey];

  [(NSMutableDictionary *)shapeViewsByPosition removeObjectForKey:v7];
}

@end