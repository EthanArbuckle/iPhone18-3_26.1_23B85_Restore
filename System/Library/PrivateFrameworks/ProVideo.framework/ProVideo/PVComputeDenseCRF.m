@interface PVComputeDenseCRF
- (PVComputeDenseCRF)initWithColor:(id)a3 proximity:(id)a4;
- (void)generateMatte:(id)a3;
@end

@implementation PVComputeDenseCRF

- (PVComputeDenseCRF)initWithColor:(id)a3 proximity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PVComputeDenseCRF;
  v9 = [(PVComputeDenseCRF *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_color, a3);
    objc_storeStrong(&v10->_proxy, a4);
  }

  return v10;
}

- (void)generateMatte:(id)a3
{
  v4 = a3;
  v5 = [(PVImageBuffer *)self->_color cvPixelBuffer];
  v6 = [(PVImageBuffer *)self->_proxy cvPixelBuffer];
  v7 = [v4 cvPixelBuffer];
  HGCVBitmap::create(v5, 21, 0, &v87);
  HGCVBitmap::create(v6, 21, 0, &v86);
  HGCVBitmap::create(v7, 28, 0, &v85);
  v8 = v86;
  v9 = *(v87 + 7);
  v10 = *(v87 + 5);
  v11 = (v9 - v10);
  if (v11 == *(v86 + 28) - *(v86 + 20))
  {
    v12 = *(v87 + 8);
    v13 = *(v87 + 6);
    v14 = (v12 - v13);
    if (v14 == *(v86 + 32) - *(v86 + 24) && v11 == *(v85 + 7) - *(v85 + 5) && v14 == *(v85 + 8) - *(v85 + 6))
    {
      v15 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v15, *(v8 + 20), *(v8 + 28), 7);
      if (v12 != v13)
      {
        v16 = 0;
        v17 = *(v86 + 80);
        v18 = *(v86 + 64);
        v19 = v15[10];
        v20 = v15[8];
        if (v11 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = (v9 - v10);
        }

        if (v14 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = (v12 - v13);
        }

        do
        {
          v23 = v17;
          v24 = v19;
          v25 = v21;
          if (v9 != v10)
          {
            do
            {
              v26 = *v23;
              v23 += 3;
              v27 = v26;
              if (v26 >= 0.25)
              {
                v27 = 0.0;
              }

              *v24++ = v27;
              --v25;
            }

            while (v25);
          }

          ++v16;
          v19 = (v19 + v20);
          v17 = (v17 + v18);
        }

        while (v16 != v22);
      }

      v77 = (v12 - v13);
      v28 = v87;
      v75 = v15;
      v29 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v29, *(v28 + 20), *(v28 + 28), 7);
      v30 = v87;
      if (v12 != v13)
      {
        v31 = 0;
        v32 = *(v87 + 8);
        v33 = v29[10];
        v34 = v29[8];
        if (v11 <= 1)
        {
          v35 = 1;
        }

        else
        {
          v35 = (v9 - v10);
        }

        v36 = (v12 - v13);
        if (v77 <= 1)
        {
          v36 = 1;
        }

        v37 = *(v87 + 10) + 8;
        do
        {
          v38 = v37;
          v39 = v33;
          v40 = v35;
          if (v9 != v10)
          {
            do
            {
              v41 = *(v38 - 2);
              v42 = *(v38 - 1);
              v43 = *v38;
              if (*v38 <= v41)
              {
                v44 = *(v38 - 2);
              }

              else
              {
                v44 = *v38;
              }

              if (*v38 >= v41)
              {
                v45 = *(v38 - 2);
              }

              else
              {
                v45 = *v38;
              }

              if (v42 <= v41)
              {
                v46 = *(v38 - 2);
              }

              else
              {
                v46 = *(v38 - 1);
              }

              if (v42 >= v41)
              {
                v47 = *(v38 - 2);
              }

              else
              {
                v47 = *(v38 - 1);
              }

              if (v43 <= v42)
              {
                v44 = v46;
              }

              if (v43 >= v42)
              {
                v45 = v47;
              }

              v48 = v44 - v45;
              if (v48 == 0.0)
              {
                v51 = 0.0;
              }

              else
              {
                v49 = ((v43 - v42) / v48) + 4.0;
                if (v42 == v44)
                {
                  v49 = ((v41 - v43) / v48) + 2.0;
                }

                v50 = (v42 - v41) / v48;
                if (v43 != v44)
                {
                  v50 = v49;
                }

                v51 = v50 / 6.0;
                if (v51 < 0.0)
                {
                  v51 = v51 + 1.0;
                }
              }

              *v39++ = v51;
              v38 += 3;
              --v40;
            }

            while (v40);
          }

          ++v31;
          v33 = (v33 + v34);
          v37 += v32;
        }

        while (v31 != v36);
      }

      v52 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v52, *(v30 + 20), *(v30 + 28), 7);
      v53 = v87;
      v74 = v52;
      v82 = v10;
      v73 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v73, *(v53 + 20), *(v53 + 28), 13);
      v54 = (v12 - v13);
      if (v12 != v13)
      {
        v55 = 0;
        v56 = v75[10];
        v57 = v52[10];
        v79 = v74[8];
        v80 = v75[8];
        v58 = v73[10];
        v83 = v73[8];
        if (v11 <= 1)
        {
          v59 = 1;
        }

        else
        {
          v59 = v11;
        }

        if (v77 <= 1)
        {
          v54 = 1;
        }

        v78 = v54;
        v60 = 2 * v59;
        v76 = v73[10];
        v81 = v9;
        do
        {
          if (v9 != v82)
          {
            v61 = 0;
            v62 = 0;
            v63 = v56;
            v64 = v57;
            do
            {
              v65 = *v63;
              v66 = 1.0 / (expf(((*v64 * 8.0) + -0.35) * -5.0) + 1.0);
              v67 = 1.0 - v66;
              if (v65 <= 0.0)
              {
                *(v58 + 4 * v61) = v67 * 2.0794;
                v71 = v66 * 2.0794;
                v70 = v61;
              }

              else
              {
                v68 = v67 * 1.0986;
                if (v66 <= 0.5)
                {
                  v69 = v68;
                }

                else
                {
                  v69 = 0.28768;
                }

                *(v58 + 4 * v61) = v69;
                v70 = 2 * v62;
                v71 = 2.0794;
              }

              *(v76 + v83 * v55 + 4 * v70 + 4) = v71;
              ++v62;
              v61 += 2;
              ++v64;
              ++v63;
            }

            while (v60 != v61);
          }

          ++v55;
          v58 += v83;
          v57 = (v57 + v79);
          v56 = (v56 + v80);
          v9 = v81;
        }

        while (v55 != v78);
      }

      v72 = CFUUIDGetConstantUUIDWithBytes(0, 0xD0u, 0xEDu, 0xE3u, 0xC7u, 0xB1u, 0x48u, 0x47u, 0x4Eu, 0x88u, 0xB6u, 0xF1u, 0xD5u, 0x7Cu, 0xC9u, 0xDFu, 0x6Au);
      HFDenseCRFInterface::HFDenseCRFInterface(v84, v72);
    }
  }

  NSLog(&cfstr_ErrorInputsToC.isa);
  if (v85)
  {
    (*(*v85 + 24))(v85);
  }

  if (v86)
  {
    (*(*v86 + 24))(v86);
  }

  if (v87)
  {
    (*(*v87 + 24))(v87);
  }
}

@end