@interface RSOrthographicDetector
- (RSOrthographicDetector)init;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation RSOrthographicDetector

- (id).cxx_construct
{
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 14) = 0u;
  *(self + 1272) = 0u;
  *(self + 1288) = 0u;
  *(self + 1304) = 0u;
  *(self + 1320) = 0u;
  *(self + 1336) = 0u;
  *(self + 1352) = 0u;
  return self;
}

- (void)dealloc
{
  ioSurface = self->_ioSurface;
  if (ioSurface)
  {
    CFRelease(ioSurface);
  }

  CVPixelBufferRelease(self->_semanticMapBuffer);
  for (i = 176; i != 224; i += 8)
  {
    v5 = *(self + i - 48);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(&self->super.isa + i);
    if (v6)
    {
      CFRelease(v6);
    }

    CVPixelBufferRelease(*(self + i - 144));
    CVPixelBufferRelease(*(self + i - 96));
  }

  plan = self->_plan;
  espresso_plan_destroy();
  ctx = self->_ctx;
  espresso_context_destroy();
  v9.receiver = self;
  v9.super_class = RSOrthographicDetector;
  [(RSOrthographicDetector *)&v9 dealloc];
}

- (RSOrthographicDetector)init
{
  v115[2] = *MEMORY[0x277D85DE8];
  v99.receiver = self;
  v99.super_class = RSOrthographicDetector;
  v98 = [(RSOrthographicDetector *)&v99 init];
  if (v98)
  {
    *(v98 + 34) = espresso_create_context();
    *(v98 + 35) = espresso_create_plan();
    v2 = MEMORY[0x277CCA8D8];
    v3 = objc_opt_class();
    v88 = objc_msgSend_bundleForClass_(v2, v4, v3);
    v5 = sub_262381FB4(@"orthographic_v9.1_palettized.espresso.net", 0, v88);
    v6 = *(v98 + 35);
    v89 = v5;
    v7 = v5;
    objc_msgSend_UTF8String(v89, v8, v9);
    espresso_plan_add_network();
    v10 = *(v98 + 35);
    espresso_plan_build();
    v96 = *MEMORY[0x277CD2A28];
    v11 = *MEMORY[0x277CD2A28];
    v97 = *MEMORY[0x277CD2B88];
    v112[0] = *MEMORY[0x277CD2B88];
    v112[1] = v11;
    v113[0] = &unk_2874FAB90;
    v113[1] = &unk_2874FABA8;
    v94 = *MEMORY[0x277CD2960];
    v12 = *MEMORY[0x277CD2960];
    v95 = *MEMORY[0x277CD2A70];
    v112[2] = *MEMORY[0x277CD2A70];
    v112[3] = v12;
    v113[2] = &unk_2874FABC0;
    v113[3] = &unk_2874FABD8;
    v93 = *MEMORY[0x277CD2968];
    v112[4] = *MEMORY[0x277CD2968];
    v113[4] = &unk_2874FABF0;
    pixelBufferAttributes = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v113, v112, 5);
    v14 = IOSurfaceCreate(pixelBufferAttributes);
    v15 = v98;
    *(v98 + 3) = v14;
    if (!v14)
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v16 = qword_27FF0C058;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2621C3000, v16, OS_LOG_TYPE_DEBUG, "DoorWindow IOSurfaceCreate failure", buf, 2u);
      }

      v15 = v98;
      v14 = *(v98 + 3);
    }

    allocator = *MEMORY[0x277CBECE8];
    if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v14, pixelBufferAttributes, v15 + 1))
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v17 = qword_27FF0C058;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2621C3000, v17, OS_LOG_TYPE_DEBUG, "DoorWindow input CVPixelBufferCreate failure", buf, 2u);
      }
    }

    *(v98 + 2) = 0u;
    *(v98 + 5) = 0u;
    v18 = (v98 + 80);
    *(v98 + 6) = 0u;
    *(v98 + 7) = 0u;
    *(v98 + 3) = 0u;
    *(v98 + 4) = 0u;
    sub_26220A210(v98 + 28);
    sub_26220A210(v98 + 31);
    v19 = 0;
    v20 = 0;
    v92 = *MEMORY[0x277CC4E28];
    v21 = 67109120;
    for (i = (v98 + 32); ; ++i)
    {
      v23 = dword_2623A851C[v20];
      v24 = v23 * dword_2623A8504[v20];
      v25 = *(v98 + 28);
      *buf = 0;
      sub_26220A3AC((v25 + v19), v24 * v23, buf, v21);
      v110[0] = v97;
      v26 = dword_2623A8534[v20];
      v28 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v27, v26);
      v111[0] = v28;
      v110[1] = v96;
      v30 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v29, v24);
      v111[1] = v30;
      v111[2] = &unk_2874FABC0;
      v110[2] = v95;
      v110[3] = v94;
      v111[3] = &unk_2874FABD8;
      v110[4] = v93;
      v32 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v31, 2 * v26);
      v111[4] = v32;
      v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v111, v110, 5);

      v36 = IOSurfaceCreate(v34);
      v37 = &v98[8 * v20];
      *(v37 + 16) = v36;
      if (!v36)
      {
        if (qword_27FF0C060 != -1)
        {
          dispatch_once(&qword_27FF0C060, &unk_2874EE100);
        }

        v38 = qword_27FF0C058;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = v20;
          _os_log_debug_impl(&dword_2621C3000, v38, OS_LOG_TYPE_DEBUG, "DoorWindow IOSurfaceCreate logitsMap %d failure", buf, 8u);
        }

        v36 = *(v37 + 16);
      }

      v108 = v92;
      v109 = MEMORY[0x277CBEC10];
      v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, &v109, &v108, 1);
      v40 = CVPixelBufferCreateWithIOSurface(allocator, v36, v39, i);
      if (v40)
      {
        if (qword_27FF0C060 != -1)
        {
          dispatch_once(&qword_27FF0C060, &unk_2874EE100);
        }

        v41 = qword_27FF0C058;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = v40;
          _os_log_debug_impl(&dword_2621C3000, v41, OS_LOG_TYPE_DEBUG, "CVPixelBufferCreateWithIOSurface output logits failure (%d)", buf, 8u);
        }
      }

      ++v20;
      v19 += 24;
      if (v20 == 6)
      {
        v42 = 0;
        v43 = 0;
        while (1)
        {
          v44 = dword_2623A851C[v43];
          v45 = v44 * dword_2623A854C[v43];
          v46 = *(v98 + 31);
          *buf = 0;
          sub_26220A3AC((v46 + v42), v45 * v44, buf, v21);
          v106[0] = v97;
          v47 = dword_2623A8534[v43];
          v49 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v48, v47);
          v107[0] = v49;
          v106[1] = v96;
          v51 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v50, v45);
          v107[1] = v51;
          v107[2] = &unk_2874FABC0;
          v106[2] = v95;
          v106[3] = v94;
          v107[3] = &unk_2874FABD8;
          v106[4] = v93;
          v53 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v52, 2 * v47);
          v107[4] = v53;
          v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v54, v107, v106, 5);

          v57 = IOSurfaceCreate(v55);
          v58 = &v98[8 * v43];
          *(v58 + 22) = v57;
          if (!v57)
          {
            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v59 = qword_27FF0C058;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              *&buf[4] = v43;
              _os_log_debug_impl(&dword_2621C3000, v59, OS_LOG_TYPE_DEBUG, "DoorWindow IOSurfaceCreate offsetsMap %d failure", buf, 8u);
            }

            v57 = *(v58 + 22);
          }

          v104 = v92;
          v105 = MEMORY[0x277CBEC10];
          v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v56, &v105, &v104, 1);
          v61 = CVPixelBufferCreateWithIOSurface(allocator, v57, v60, v18);
          if (v61)
          {
            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v62 = qword_27FF0C058;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              *&buf[4] = v61;
              _os_log_debug_impl(&dword_2621C3000, v62, OS_LOG_TYPE_DEBUG, "CVPixelBufferCreateWithIOSurface output offsets failure (%d)", buf, 8u);
            }
          }

          ++v43;
          ++v18;
          v42 += 24;
          if (v43 == 6)
          {
            sub_26220A5F0(v98 + 162, 5uLL);
            *buf = xmmword_2623A7820;
            sub_26220A704(v98 + 165, buf, v115, 4uLL);
            for (j = 0; j != 6; ++j)
            {
              *buf = *&dword_2623A8584[j] * 448.0;
              sub_2621C8F2C((v98 + 1344), buf);
            }

            v64 = 0;
            v65 = *(v98 + 168);
            v66 = (v98 + 316);
            for (k = (v98 + 356); ; k += 40)
            {
              v68 = 0;
              v69 = *(v65 + 4 * v64);
              v70 = v66;
              do
              {
                v71 = sqrtf(*&dword_2623A859C[v68]);
                *(v70 - 1) = v69 * v71;
                *v70 = v69 / v71;
                ++v68;
                v70 += 2;
              }

              while (v68 != 5);
              if (v64 == 5)
              {
                break;
              }

              v72 = 0;
              v73 = sqrtf(v69 * *(v65 + 4 + 4 * v64));
              v74 = k;
              do
              {
                v75 = sqrtf(*&dword_2623A859C[v72]);
                *(v74 - 1) = v73 * v75;
                *v74 = v73 / v75;
                ++v72;
                v74 += 2;
              }

              while (v72 != 5);
              ++v64;
              v66 += 40;
            }

            v76 = *(v98 + 160);
            v77 = *(v98 + 159);
            v78 = v76 - v77;
            v79 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v77) >> 3);
            if (v79 > 5)
            {
              if (v78 != 144)
              {
                v85 = v77 + 144;
                while (v76 != v85)
                {
                  v76 -= 24;
                  *buf = v76;
                  sub_262208FEC(buf);
                }

                *(v98 + 160) = v85;
              }
            }

            else
            {
              v80 = 6 - v79;
              v81 = *(v98 + 161);
              if (0xAAAAAAAAAAAAAAABLL * ((v81 - v76) >> 3) < v80)
              {
                v82 = 0xAAAAAAAAAAAAAAABLL * ((v81 - v77) >> 3);
                v83 = 2 * v82;
                if (2 * v82 <= 6)
                {
                  v83 = 6;
                }

                if (v82 >= 0x555555555555555)
                {
                  v84 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v84 = v83;
                }

                if (v84 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_2621C6A34();
              }

              bzero(*(v98 + 160), 24 * ((120 - v78) / 0x18uLL) + 24);
              *(v98 + 160) = v76 + 24 * ((120 - v78) / 0x18uLL) + 24;
            }

            v100 = 0;
            sub_2621CD1D8(&__p, 4uLL);
            sub_2621E1B50(&v102, 0x38uLL);
            memset(v103, 0, sizeof(v103));
            *buf = v103;
            buf[8] = 0;
            sub_26220A828(v103, 0x38uLL);
          }
        }
      }
    }
  }

  v86 = *MEMORY[0x277D85DE8];
  return 0;
}

@end